/* 모바일 메뉴 */
(function () {
  var b = document.getElementById('burger'), n = document.getElementById('nav');
  if (!b || !n) return;
  b.addEventListener('click', function () {
    var open = n.classList.toggle('open');
    b.setAttribute('aria-expanded', open ? 'true' : 'false');
  });
})();

/* 게시판 검색 */
(function () {
  var inp = document.getElementById('bs');
  if (!inp) return;
  var rowsAll = [].slice.call(document.querySelectorAll('.board tbody tr'));
  var out = document.getElementById('bc');
  inp.addEventListener('input', function () {
    var q = inp.value.trim().toLowerCase(), shown = 0;
    rowsAll.forEach(function (r) {
      var hit = !q || r.textContent.toLowerCase().indexOf(q) !== -1;
      r.hidden = !hit;
      if (hit) shown++;
    });
    if (out) out.textContent = q ? shown + ' / ' + rowsAll.length + ' 건 표시'
                                 : '전체 ' + rowsAll.length + ' 건';
  });
})();

/* 탭 */
(function () {
  document.querySelectorAll('.tabs').forEach(function (bar) {
    var btns = [].slice.call(bar.querySelectorAll('button'));
    btns.forEach(function (b) {
      b.addEventListener('click', function () {
        btns.forEach(function (o) {
          o.classList.remove('on');
          o.setAttribute('aria-selected', 'false');
          var pn = document.getElementById(o.getAttribute('data-pane'));
          if (pn) pn.hidden = true;
        });
        b.classList.add('on');
        b.setAttribute('aria-selected', 'true');
        var pn = document.getElementById(b.getAttribute('data-pane'));
        if (pn) pn.hidden = false;
      });
    });
  });
})();
