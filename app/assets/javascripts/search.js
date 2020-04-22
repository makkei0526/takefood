document.addEventListener("turbolinks:load", function() {
  var search_list = $(".search__mainbox");

  function appendShop(shop) {
    var html = `<div class="search__box">
    <div class="search__box--contens">
    <a class="#" href="/shops/${shop.id}"><div class="search__name">
    ${shop.shopname}
    </div>
    <hr>
    <div class="search__area">
    ${shop.area}
    
    </div>
    </a></div>
    <div class="search__box--foods search__box--foods${shop.id}">
    </div>
    </div>`
    search_list.append(html);
  }

  function appendfood(food,id){
    var apennding = ".search__box--foods" + id;

  if (food.image.url){
    var name = food.name
    var img = food.image.url
    var price = food.price
    var html = `<div class="search__box--food">
    <div class="search__box--food-image">
    <img src="${img}">
    </div>
    <div class="search__box--food-under">
    <div class="search__box--food-name">
    ${name}
    </div>
    <div class="search__box--food-price">
    在庫（箱）：
    <spam class="search__box--food-num">
    ${price}
    </spam>
    </div>
    </div>
    </div>`
      $(apennding).append(html)
  } else {
    var name = food.name
    var price = food.price
    var html = `<div class="search__box--food">
    <div class="search__box--food-image">
    <div class="noimage__box--index"></div>
    </div>
    <div class="search__box--food-under">
    <div class="search__box--food-name">
    ${name}
    </div>
    <div class="search__box--food-price">
    値段（円）：
    <spam class="search__box--food-num">
    ${price}
    </spam>
    </div>
    </div>
    </div>`
      $(apennding).append(html)
  }
}

function appendErrMsgToHTML(msg) {
  var html = `<div class='name'>"${ msg }"エリアの近くででテイクアウトができるお店が見つかりませんでした。</div>`
  search_list.append(html);
}

  $(".search-input").on("keyup", function() {
    var input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/shops/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(shops) {
      search_list.empty();
      if (shops.length !== 0) {
        shops.forEach(function(shop){
          appendShop(shop);
          shop.foods.forEach(function(food){
            appendfood(food,shop.id);
          })
        });
      }
      else {
        appendErrMsgToHTML(input);
      }
    })
  });
});