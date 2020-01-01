<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
<style type="text/css">
  /* Nanum Gothic;  Jeju Gothic;*/

  #main {
  	width: 450px;
  	margin: 0 auto;
  }

  .calendar-input {
      position: absolute;
      padding: 15px 0;
      width:250px;
      display: none;
      border:1px solid #ccc;
      z-index: 0;
  }

  .calendar-input.fadeIn {
      display: block;
      z-index: 999;
  }

  .calendar-input .calendar-body .calendar-title  {
      height: 35px;
  }

  .calendar-input .calendar-body .calendar-title .calendar {
      height: 35px;
      line-height: 35px;
  }

  .calendar-input .calendar-body .calendar-title .calendar-btn-left {
      background-size: 100%;
  }

  .calendar-input .calendar-body .calendar-title .calendar-btn-right {
      background-size: 100%;
  }

  .calendar-input .calendar-body .calendar-title .calendar .title-y {
      font-size: 17px;
  }

  .calendar-input .calendar-body .calendar-title .calendar .title-m {
      font-size: 19px;
  }

  .calendar-input .calendar-body .calendar-head .calendar-week {
      font-size:10px;
  }

  .calendar-input .calendar-body .calendar-row {
      height: 35px;
  }

  .calendar-input .calendar-body .calendar-row .calendar-day {
      line-height: 30px;
  }

  .calendar-input .calendar-body .calendar-row .calendar-day span {
      font-size: 11px;
      width: 25px;
      height: 25px;
      line-height: 25px;
  }

  .calendar-input .calendar-body .calendar-row .calendar-day .special-name {
      font-size:0;
  }

  .calendar-input .calendar-body .special-day.active span::after {
      background: #c20606;
      transform: initial;
  }

  .calendar-body {
      position: relative;
      width:90%;
      margin:0 auto;
      font-size: 17px;
      font-family: 'Nanum Gothic';
      /* font-family: Roboto,Noto,Helvetica,Arial,sans-serif; */
      letter-spacing: -1px;
      text-align: center;
      background: #fff;
      z-index:2
  }

  .calendar-body .calendar-title {
      display:flex;
      height: 50px;
      font-size:20px;
      border-bottom: 1px solid #ccc;
      background: #fff
  }

  .calendar-body .calendar-title .title-y {
      background: #fff;
      border:1px solid #fff;
      outline: 0;
      padding: 0;
      font-size:25px;
      color: #000
  }

  .calendar-body .calendar-title .title-m {
      background: #fff;
      border:1px solid #fff;
      outline: 0;
      padding: 0;
      font-size:27px;
      font-weight: 800;
      color: #000
  }

  .calendar-body .calendar-title div.calendar {
      font-size:18px;
      letter-spacing: 1.0px;
      width: 70%;
      height: 50px;
      line-height: 43px;
      text-align:center;
      letter-spacing: -1.0px;
  }

  .calendar-body .calendar-title #left-btn {
      width:15%;
      float:left;
      cursor:pointer;
  }

  .calendar-body .calendar-title .calendar-btn-left {
      background-position: 0 0;
      background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAQAAAD9CzEMAAAATklEQVR4Ae3NsRFAYBQE4e0KhZmRGK9kKkCgAMkF75/9Lr9FkhorKnt/v6vg/bcte38yee+99/lAx8Q1SGIeIrHwg4kVkomdoOJAktp4AKp2d2Pqh9YJAAAAAElFTkSuQmCC');
      background-repeat: no-repeat;
  }

  .calendar-body .calendar-title #right-btn {
      width:15%;
      float:right;
      cursor:pointer;
  }

  .calendar-body .calendar-title .calendar-btn-right {
      background-position: 100% 0px;
      background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAQAAAD9CzEMAAAAUUlEQVR4Ae3Nuw2AQBDE0GmLT2NIBMuVDAUM4WVkg7SSXwG2AKCRS6WgIcu5xSnLycWimwULFn8v1uwgnN+a55/G+Z38lyOVn2rmc4tSWwDwAg8dd8M/SQZ2AAAAAElFTkSuQmCC');
      background-repeat: no-repeat;
  }

  .calendar-body .calendar-head {
      display:flex;
      height: 30px;
      border-bottom: 1px solid #ccc;
  }

  .calendar-body .calendar-head .calendar-week {
      line-height: 30px;
      width:calc(100% / 7);
      font-size:13px;
      color:#000000;
      font-weight: 400
  }

  .calendar-body .calendar-row {
      display:flex;
      height: 55px;
      border-bottom: 1px solid #ccc;
  }

  .calendar-body .calendar-row:last-child {
      border: 0;
  }

  .calendar-body .calendar-row .calendar-day {
      line-height: 50px;
      width:calc(100% / 7);
      position: relative;
  }

  .calendar-body .calendar-row .calendar-day span{
      display:inline-block;
      width: 35px;
      height: 35px;
      line-height:34px;
      border-radius: 50%;
      font-weight:bold;
      cursor: pointer;
      font-size:15px;
  }

  .calendar-body .calendar-row .calendar-day span:hover {
      /* border:1px solid #ccc */
  }

  .calendar-body .calendar-row .unable span{
      cursor: default;
      color:#c2c2c2
  }

  .calendar-body .today span {
      background:#dedede;
      color:#8f8f8f;
  }

  .calendar-body .active span {
      background:#2196f3;
      color:#ffffff
  }

  .calendar-body .active:not(.special-day) span::after {
      content:'';
      position:absolute;
      background: rgba(255, 255, 255, .7);
      width:100%;
      height:100%;
      border-radius: 50%;
      pointer-events: none;
      transform: scale(0);
      top:0;
      left:0;
      z-index:11;
      animation: ripple_clicker .5s ease-out
  }

  .calendar-body .special-day span::after {
      content: '';
      background:#c20606;
      position: absolute;
      width:20%;
      height:20%;
      top:0px;
      right:0px;
      border-radius: 50%;
      transition: all .5s
  }

  .calendar-body .special-day .special-name {
      position: absolute;
      width:100%;
      top:21px;
      text-align: center;
      font-size:11px;
      height: 0px;
      /* line-height: initial; */
      font-weight: bold;
      transition: all .5s
  }

  .calendar-body .special-day.active span::after {
      /* transform-origin: left; */
      background:#ffc1c1;
      transform: translate(-200%, 200%) scale(5.5)
  }

  .calendar-body .special-day.active .special-name {
      top:2px;
  }

  .calendar-body span {
      position: relative;
      color:#000000;
  }

  .calendar-body .tooltip {
      opacity: 0;
      position: absolute;
      top:105%;
      left:0;
      padding: 5px 20px;
      font-size: 16px;
      letter-spacing: 1.2px;
      color: #fff;
      background-color: #000;
      border-radius: 5px;
      transition: all .5s;
  }

  .calendar-body .tooltip::after {
      content: '';
      position: absolute;
      bottom:100%;
      left:10%;
      margin-left:-4px;
      border-width: 8px;
      border-style: solid;
      border-color: transparent transparent black transparent;
  }

  .calendar-body:hover .tooltip {
      opacity: 1
  }

  .calendar-body .multi-choice::after {
      content:'';
      position:absolute;
      background: rgb(43, 74, 255);
      width:20px;
      height:20px;
      left:calc(50% + 10px);
      border-radius: 50%;
      pointer-events: none;
      transform: scale(0);
      top:0;
      right:0;
      z-index:1;
      animation: ripple .8s ease-out infinite
  }

  .calendar-body .drag-body {
      background: #21ddcd;
      background-size: 90%
  }

  .calendar-body #context {
      position:absolute;
      display:none;
      top: 45px;
      left: calc(50% - 18px);
      z-index:2;
  }

  .calendar-body #context.show {
      display: block;
      z-index:9;
  }

  .calendar-body #multi-button {
      background:#fff;
      position: absolute;
      top:0;
      padding:0;
      width:36px;
      height:21px;
      font-size:11px;
      text-align:center;
      border:1px solid black;
      outline: none;
  }

  @keyframes ripple_clicker {
      to{
          transform: scale(1.5);
          opacity: 0;
      }
  }

  @keyframes ripple {
      to{
          transform: scale(1);
          opacity: 0;
      }
  }
</style>
  </head>
  <body>
    <div id='main'>
<div id='app'></div>
<!-- <input type='text' name='calendar' id='app' style='padding:5px 10px; margin: 20px 20px; border:1px solid black'/> -->
</div>
<div>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
  // document.oncontextmenu = function () {return false}

  var _cal = (function (cal) {

      var layout, multiMemory = {pick0: [], pick1: []};

      function Calendar () {
          this.version = '0.1.8 plus';
          this.prevSpecial = new Array();
      }

      // 내부 데이터 활용
      var propLuncher = function (para){
          var _para = para;
          if(typeof _para == 'object' && _para != undefined) {
              for(var i  in _para){
                  if(_cal[i] == undefined){
                      _cal[i] = _para[i];
                  } else {
                      onError('"'+_cal[i]+'" is aleady exist in props value');
                      break;
                  }
              }
          }
      };

      var _tag = function (el) {

          var name = ['year', 'month' , 'day'];

          function parents (division , find) {
              var t = el.parentNode;
              var value;

              if (t.parentNode == null) {
                  return false;
              } else {
                  while(true){

                      if (t == null) {
                          t = false;
                          break;
                      }

                      if (division === 'class') {
                          value = classMerge(t.classList);
                      }else if (division === 'id') {
                          value = t.id;
                      } else {
                          value = t.tagName;
                      }

                      if(value.indexOf(find) > -1){
                          break;
                      }

                      t = t.parentNode;
                  }
                  return t;
              }
          }

          /* for IE ... */
          function classMerge (l) {
              var value = '';

              if (l != undefined) {
                  for(var i = 0; i < l.length; i++){
                      value += l[i]+' '
                  }
              }

              return value;
          }

          function addOnceAttribute (el, obj) {
              obj.forEach(function (value, index) {
                  el.setAttribute("date-"+name[index], value);
              })
          }

          function removeOnceAttribute (el) {
              name.forEach(function (value) {
                  el.removeAttribute("date-"+value);
              })
          }


          return {
              classMerge: classMerge,
              parents: parents,
              addOnceAttribute: addOnceAttribute,
              removeOnceAttribute: removeOnceAttribute
          }
      };

      var layout = function (f,o,self) {
          var b, h, t, c, l, r, tooltip, d = document;
          var row = [], col = [] , span = [], heads = [];
          var weekendSimple = ['Sun', 'Mon', 'The', 'Wen', 'Thu', 'Fri', 'Set'];
          var multiple = [], clickCount = 0 ;

          /* week simple name option */
          if(o.weekendSimple != undefined) {
              if(o.weekendSimple.length < 7){
                  onError('Lack a number in weekendSimple to index length.');
              }else{
                  weekendSimple = o.weekendSimple;
              }
          }

          /* div create */
          b = f.el(self).appendChild(d.createElement('div'));

          /* mouse event option */
          b.ondragstart = function () {return false};
          b.onselectstart = function () {return false};
          // b.oncontextmenu = function () {return false}

          /* version alert */
          tooltip = d.createElement('span');
          tooltip.classList.add('tooltip');
          tooltip.innerText = self.version;
          b.appendChild(tooltip);

          b.classList.add('calendar-body');

          l = d.createElement('div');
          l.id = 'left-btn';

          r = d.createElement('div');
          r.id = 'right-btn';

          if(o.buttonCustomizer != undefined){
              l.innerHTML = o.buttonCustomizer.left;
              r.innerHTML = o.buttonCustomizer.right;
          }else{
              l.classList.add('calendar-btn-left');
              r.classList.add('calendar-btn-right');
          }

          c = d.createElement('div');
          c.classList.add('calendar');

          t = d.createElement('div');
          t.classList.add('calendar-title');

          t.appendChild(l);
          t.appendChild(c);
          t.appendChild(r);

          b.appendChild(t);

          h = d.createElement('div');
          h.classList.add('calendar-head');
          b.appendChild(h);

          for (var w = 0; w < 7; w++){
              heads.push(d.createElement('div'));
              heads[w].classList.add('calendar-week');
              heads[w].innerText = weekendSimple[w];
              h.appendChild(heads[w]);
          }

          // dom 생성
          for (var i = 0; i < 6; i++) {
              col[i] = [];
              span[i] = [];

              row.push(d.createElement('div'));
              b.appendChild(row[i]);
              row[i].classList.add('calendar-row');
              for (var j = 0; j < 7; j++) {
                  col[i].push(d.createElement('div'));
                  row[i].appendChild(col[i][j]);
                  col[i][j].classList.add('calendar-day');

                  span[i].push(d.createElement('span'));
                  col[i][j].appendChild(span[i][j]);

                  f.action(span[i][j],o);
              }
          }

          // context menu
          if (o.multipleDay != undefined) {
              var context = d.createElement('div');
              context.id = 'context';
              var menu = d.createElement('button');
              menu.innerText = '선택';
              menu.id = 'multi-button';

              menu.addEventListener('click', function (e) {
                  var target = _tag(e.target).parents('class','calendar-day');
                  if (clickCount == 2) {
                      multiple.forEach(function (el) {
                          el.classList.remove('multi-choice');
                      });
                      clickCount = 0;
                  }

                  target.classList.add('multi-choice');
                  multiple[clickCount] = target;
                  multiMemory['pick'+clickCount] = [target.getAttribute('date-year'),target.getAttribute('date-month'),target.getAttribute('date-day')];

                  if (clickCount == 1) {
                      var temp,alterater = false;

                      for(var i = 0; i < multiMemory.pick0.length; i++){
                          alterater = parseInt(multiMemory.pick0[i]) > parseInt(multiMemory.pick1[i]) ? true : false;
                          if(alterater == true){
                              temp = multiMemory.pick0;
                              multiMemory.pick0 = multiMemory.pick1;
                              multiMemory.pick1 = temp;
                              break;
                          }
                      }

                      o.multipleDay(multiMemory.pick0,multiMemory.pick1);
                  }
                  clickCount++;
              });

              context.appendChild(menu);
              f.multipleDay(span , context);
          };

          return {
              body: b,
              head: h,
              heads: heads,
              row: row,
              col: col,
              span: span,
              title : [c, l, r],
          }
      };

      // Error
      var onError = function (err){
          console.error(new Error(err));
          return false;
      };

      Calendar.prototype.setDate = function (set) {
          var _set = set == undefined ? Date.now() : set;
          var d = new Date();
          var _d = new Date(_set);

          this.nowDate = {
              millie: Date.now(),
              year: d.getFullYear(),
              month: d.getMonth() + 1,
              day: d.getDate(),
              week: d.getDay(),
          };

          this.transformDate = {
              year: _d.getFullYear(),
              month: _d.getMonth() + 1,
              day: _d.getDate(),
              week: _d.getDay()
          };
      };

      Calendar.prototype.btn = function (s) {
          var self = this;
          var _selec = s;

          var next = function (func) {
              var y = self.transformDate.year;
              var m = self.transformDate.month + 1;
              if(m > 12) {
                  m = 1;
                  y++;
              }

              self.setDate(y +'/'+ m +'/'+ 1);
              self.fn(self).data();
              self.render(self, func);
          };

          var prev = function (func) {
              var y = self.transformDate.year;
              var m = self.transformDate.month - 1;
              if(m < 1) {
                  m = 12;
                  y--;
              }
              self.setDate(y +'/'+ m +'/'+ 1);
              self.fn(self).data();
              self.render(self, func);
          };

          return {
              next: next,
              prev: prev
          }
      };

      // 내부 함수 기능
      Calendar.prototype.fn = function () {
          var self = this;
          var binded = {start : undefined, end: undefined};

          function element(o) {
              var el, reg = /^[#|.]\w+$/;
              var input, tn, tag = false, fadeTime = false;

              if (typeof o == 'object') {
                  if (!reg.test(o.el)) {
                      onError('You write wrong Selector \n Include id or class css selector in "el" option.');
                      if (!o.el ){
                          onError('You didn`t write Selector in option Object.');
                      }
                  } else {
                      try {

                      el = document.querySelector(o.el);
                      tn = el.tagName.toLowerCase();
                      tag = tn === 'input' || tn === 'button' ? true : false;

                      if(tag){
                          input = document.createElement('div');
                          input.className = "calendar-input";
                          var back = document.querySelector('body');
                          back.appendChild(input);

                          document.addEventListener('click', function (e) {
                              var findword = _tag(e.target).parents('class','calendar-input');
                              var findclass = ( findword != false ) || ( _tag().classMerge(e.target.classList).indexOf('calendar') > -1 );

                              if ( findclass == false && fadeTime == true && e.target.tagName.toLowerCase() != 'input') {
                                  input.classList.remove('fadeIn');
                                  fadeTime = false;
                              }
                          });

                          var event = tn === 'input' ? 'focus' : 'click';

                          el.addEventListener(event, function (e) {
                              var top = e.target.offsetTop + e.target.offsetHeight + 5 + 'px';
                              var left = e.target.offsetLeft + 'px';

                              input.classList.add('fadeIn');
                              input.style.top = top;
                              input.style.left = left;

                              setTimeout(function () {
                                  fadeTime = true;
                              }, 200);
                          });
                      }

                      return tag == true ? input : el;

                      } catch (err) {
                          onError('It does not exist in the selected ID or class.');
                      }
                  }
              }
          };

          function format (date , form) {
              var _date;
              _date = date.year+"/"+date.month+"/"+date.day;
              if (form != undefined) {
                  _date = form.replace(/(yyyy|yy|mm|m|dd|d)/gi , function (n) {
                      switch(n){
                          case 'yyyy' : return date.year;
                          case 'yy' : return (date.year % 1000);
                          case 'mm' : return date.month > 9 ? date.month : '0' + date.month;
                          case 'm' : return date.month;
                          case 'dd' : return date.day > 9 ? date.day : '0' + date.day;
                          case 'd' : return date.day;
                          default: return n;
                      }
                  });
              }
              return _date;
          };

          function setLoopLimit (prev, next) {
              var props = self.transformDate;

              var prevProps = function () {
                  var these = {py : props.year, pm : props.month - 1};
                  if( these.pm < 1 ){
                      these.py = props.year - 1;
                      these.pm =  12
                  }
                  return 32 - new Date(these.py, these.pm - 1, 32).getDate();
              };

              var nextProps = function () {
                  var these = {ny : props.year, nm : props.month + 1};
                  if( these.nm > 12 ){
                      these.ny = props.year + 1;
                      these.nm =  1
                  }
                  return 32 - new Date(these.ny, these.nm - 1, 32).getDate();
              };

              var lastday = 32 - new Date(props.year, props.month -1, 32).getDate();
              var startday = new Date(props.year, props.month -1, 1).getDay();

              // var loop = Math.floor((lastday - (7 - startday)) / 7) + 1;
              // var piece = (lastday - startday) % 7
              // if (piece != 0) { loop += 1; }

              return {
                  prevlastday : prevProps(),
                  nextlastday : nextProps(),
                  lastday: lastday,
                  startday: startday
              }
          };

          function clickActive (binder, o) {

              var calendarInput = document.querySelector('.calendar-input');

              binder.addEventListener('click', function (e) {

                  var attr = this.parentNode;
                  var clist = e.target.parentNode.classList;

                  /* If the unabledDay option is set  */
                  var un = clist.value == undefined ? _tag().classMerge(clist) : clist.value;

                  if (un) {
                      if(un.indexOf('unable') > -1){
                          return false
                      }
                  }

                  /* Get the currently clicked date properties and create a new object */
                  var date_obj = {
                      year: self.transformDate.year,
                      month: self.transformDate.month,
                      day: parseInt(attr.getAttribute('date-day'))
                  };

                  /* Format the selected date according to the determined options. */
                  var f = format(date_obj, o.format);

                  var day = document.getElementsByClassName('active');
                  if(day.length != 0){
                      day[0].classList.remove('active');
                  }
                  binder.parentNode.classList.add('active');

                  /* If the clickActive option is set  */
                  if (o.clickActive != undefined) {
                      if(typeof o.clickActive === 'function'){
                          // console.log(o.clickActive.length)
                          o.clickActive(f);
                      }else{
                          onError('The clickActives type must be a "function".');
                      }
                  }
              })
          };

          function specialFilter (o) {
              var sObj = {};

              if(o.specialDay != undefined){
                  for(var i in o.specialDay){
                      var day = i.split('-');
                      if(sObj[day[0]] == undefined){
                          sObj[day[0]] = [];
                      }
                      sObj[day[0]].push({day: day[1], name: o.specialDay[i]});
                  }
              }
              return sObj;
          };

          function tagFilter (_e) {
              var _target = _e.target;
              var tag = _e.target.tagName;
              var newTarget = '';

              if(tag.toLowerCase() === 'div'){
                  newTarget = _target;
              } else if (tag.toLowerCase() === 'span') {
                  newTarget = _target.parentNode;
              }
              return newTarget;
          };

          function multipleDay (span, ctx) {
              span.forEach(function (stairone) {
                  stairone.forEach(function (stairtwo) {
                      stairtwo.addEventListener('click', function (e) {
                          stairtwo.parentNode.appendChild(ctx);
                          ctx.classList.add('show');
                      })
                  })
              })
          };

          function hasClass (param) {
              var classValue = param.classList.value == undefined ? _tag().classMerge(param.classList) : param.classList.value;
              if (classValue) {
                  if (classValue.indexOf('special-day') > -1) {
                      self.prevSpecial.push(param);
                  }
              }
          };

          var special = specialFilter(this);
          var el = element;
          var action = clickActive;
          var data = setLoopLimit;

          return {
              el: el,
              format: format,
              data: data,
              action: action,
              special : special,
              hasClass : hasClass,
              multipleDay : multipleDay
          }
      };

      // client 렌더링
      Calendar.prototype.render = function (option,func) {

          var t = _tag();
          var self = this;
          var o = option;
          var $_nd = this.nowDate;
          var $_td = this.transformDate;
          var yyyy = func.format($_td , 'yyyy');
          var mm = func.format($_td , 'mm');
          var sed = func.data();  // start end data

          var attr = false;
          var includeMonth = false;
          var specialDay = [];
          var startPoint = 0;
          var renderDay = 1;
          var prevRenderDay = sed.startday == 0 ?  sed.prevlastday - 7 : sed.prevlastday - sed.startday;
          var nextRenderDay = 1;
          var title = "<button class='title-y'>"+yyyy+"</button> <button class='title-m'>"+mm+"</button>";

          o.full = $_td.year+'/'+$_td.month;

          layout.body.setAttribute('full-day', o.full);

          layout.title[0].innerHTML = title;

          for(var _fs in func.special){
              if(_fs === mm){
                  includeMonth = true;
                  specialDay = func.special[_fs];
                  break;
              }
          }

          /* Remove old tag from prevSpecial */
          self.prevSpecial.forEach(function (el) {
              /* IE is not include Element remove */
              el.removeChild(el.childNodes[1])
          });

          /* reset prevSpecial Object */
          self.prevSpecial = [];

          for (var i = 0; i < layout.row.length; i++) {
              for (var j = 0; j < layout.span[0].length; j++) {

                  /* before day unable option */
                  if (o.unabledDay == true) {
                      if ($_td.year <= $_nd.year && ($_td.month <= $_nd.month && $_nd.month <= 12)) {
                          if(renderDay >= $_nd.day && $_td.month == $_nd.month && $_td.year >= $_nd.year){
                              layout.col[i][j].classList.remove('unable');
                          }else{
                              layout.col[i][j].classList.add('unable');
                          }
                      }else{
                          if($_td.year >= $_nd.year || ($_td.month <= $_nd.month && $_nd.month <= 12)) {
                              layout.col[i][j].classList.remove('unable');
                          }
                      }
                  }

                  /* chois day of week unable option */
                  if (o.unabledWeek != undefined) {
                      o.unabledWeek.forEach(function (el) {
                          if(el > 6){
                              onError('The unableWeek index is the limit of the 6.');
                              return false;
                          }
                          el == j ? layout.col[i][j].classList.add('unable') : o.unabledDay != true ? layout.col[i][j].classList.remove('unable') : null;
                      })
                  }

                  /* reset render */
                  layout.span[i][j].innerText = '';
                  layout.col[i][j].classList.remove('special-day');
                  layout.col[i][j].classList.remove('multi-choice');

                  if (i == 0) {
                      if (sed.startday <= j) {
                          attr = true;
                          layout.span[i][j].innerText = renderDay;
                      } else {
                          prevRenderDay++;
                          layout.col[i][j].classList.add('unable');
                          layout.span[i][j].innerText = prevRenderDay;
                      }
                  } else if (i > 0) {
                      if (sed.lastday >= renderDay) {
                          layout.span[i][j].innerText = renderDay;
                      } else {
                          layout.col[i][j].classList.add('unable');
                          layout.span[i][j].innerText = nextRenderDay;
                          nextRenderDay++;
                          attr = false;
                      }
                  }

                  /* today position option */
                  if (renderDay === $_nd.day && $_td.month == $_nd.month && $_td.year == $_nd.year && attr == true) {
                      layout.col[i][j].classList.add('active', 'today');
                  } else {
                      layout.col[i][j].classList.remove('active', 'today');
                  }

                  /* special-day render */
                  if (specialDay.length != 0 && attr == true) {
                      for (var s = 0; s < specialDay.length; s++) {
                          if (parseInt(specialDay[s].day) == renderDay) {
                              var span = document.createElement('div');
                              span.className = 'special-name';
                              span.innerText = specialDay[s].name;
                              layout.col[i][j].classList.add('special-day');
                              layout.col[i][j].appendChild(span);
                          }
                      }
                  }

                  /* Put tag information installed in prevSpecial */
                  func.hasClass(layout.col[i][j]);

                  if (attr == true) {
                      t.addOnceAttribute(layout.col[i][j],[$_td.year, $_td.month, renderDay]);
                      renderDay++;
                  } else {
                      if (layout.col[i][j].attributes.length > 1) {
                          t.removeOnceAttribute(layout.col[i][j]);
                      }
                  }
              }
          }
          /** render end */
      };

      // setup Calandar
      Calendar.prototype.setup = function (option) {

          var self = this;
          this.setDate();

          propLuncher(option);

          var btn = this.btn();
          var func = this.fn();
          layout = layout(func,option,this);

          layout.title[1].addEventListener('click', function () {
              btn.prev(func);
          });

          layout.title[2].addEventListener('click', function () {
              btn.next(func);
          });

          this.render(option, func);
      };

      return new Calendar();
  }(this));

  if(!window._cal){
      window.$c = window._cal = _cal;
  }

  _cal.setup({
  	el: '#app',
  })

</script>
  </body>
</html>
