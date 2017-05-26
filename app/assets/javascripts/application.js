// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap/carousel
//= require_tree .


/*5种背景颜色*/
.bg-color1 {
  background: #50514F;
}

.bg-color2 {
  background: #F25F5C;
}

.bg-color3 {
  background: #FFE066;
}

.bg-color4 {
  background: #247BA0;
}

.bg-color5 {
  background: #70C1B3;
}

/*navbar导航栏*/
.navbar {
  width: 100%; /*铺满*/
}
.navbarContent {
  width: 1200px; /*1200px，居中*/
  margin: 0 auto;
  height: 30px;
}
.navbarContent-left {
  float: left; /*你去左边*/
  width: 50%; /*你占一半的宽度*/
  height: 30px;
}
.navbarContent-right {
  float: right; /*你去右边*/
  width: 50%; /*你也占一半的宽度*/
  height: 30px;
}
