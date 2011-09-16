var add_slide, index, new_footer, slide_container, slide_width, slides, viewport;
var __slice = Array.prototype.slice;
viewport = document.getElementsByTagName('div')[0];
window.slide_container = slide_container = Element('slides', {});
slides = [];
window.index = index = 0;
slide_width = 1024;
add_slide = function() {
  var elements, slide;
  elements = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
  slide = Element('slide', {}, elements);
  slides.push(slide);
  return slide_container.append(slide);
};
viewport.append(slide_container);
document.addEventListener('keydown', (function(ev) {
  if (ev.keyIdentifier === "Left") {
    index = Math.max(index - 1, 0);
    slide_container.style.left = -(index * slide_width) + 'px';
    return;
  }
  if (ev.keyIdentifier === "Right") {
        index = Math.min(slides.length - 1, index + 1);
    slide_container.style.left = -(index * slide_width) + 'px';;
  }
}), true);
new_footer = function() {
  return Element('footer', {}, [Markdown("![](itu_logo.jpg)\n<br/>Siemen Baader  <br/>\nsiemenbaader@gmail.com ")]);
};
add_slide(Element('h1', {}, ['What?']), Element('content', {}, [Markdown("## SketchCode\n\nTurning code into a design material")]), new_footer());
add_slide(Element('h1', {}, ['Problem']), Element('content', {}, [Markdown("## Design Materials\n  - thinking with your hands\n  - switching levels of abstractions\n  - from concrete to abstract\n  - lateral exploration of alternatives\n  \nUseful for learning & making ill-defined new")]), new_footer());
add_slide(Element('object', {
  data: '../integrated/sketchcode.xhtml',
  style: 'width: 100%; height: 768px;'
}));
add_slide(Element('h1', {}, ['Defs']), Element('content', {}, [
  Element('object', {
    data: './concepts.html',
    style: 'width: 100%; height: 428px; overflow-y: scroll;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Process']), Element('content', {}, [Markdown("\n- Cognitive theories of designers work\n- Participant observation\n- Prototype\n- Iterate theories & prototype against concrete use cases\n")]), new_footer());
add_slide(Element('h1', {}, ['Cognition']), Element('content', {}, [Markdown("\n* **Relevance Theory**\n  * coding & decoding\n  * leverage common context\n  * ostensions\n  \n* **In SketchCode:**\n  * decouple abstractions & syntax (less decoding)\n  * rich views (better ostensions)")]), new_footer());
add_slide(Element('h1', {}, ['Cognition']), Element('content', {}, [Markdown("\n* **Reflective Practice**\n  * move-see-move\n  * surprises & re-interpretations propel process\n  * situated learning\n  \n* **In SketchCode:**\n  * does not enforce macros up-front\n  * macros cheap to make\n  * code gets affordances\n  * beating into shape vs planning\n  * unobtrusive (unplanned) bookkeeping")]), new_footer());
add_slide(Element('h1', {}, ['Cognition']), Element('content', {}, [Markdown("\n* **Distributed Cognition**\n  * thinking spans persons, artifacts & time\n  * some information easier deduced from environment\n  * humans: decisions & creativity\n  * computer: storage & computation\n  \n* **In SketchCode:**\n  * working at level of mental abstraction\n  * smarter source")]), new_footer());
add_slide(Element('h1', {}, ['Eval']), Element('content', {}, [
  Element('object', {
    data: './state-code.html',
    style: 'width: 100%; height: 400px; overflow-y: scroll;'
  }), Element('img', {
    src: './state-machine-large.png',
    style: 'position: absolute; top: -50px; left: 380px;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Eval']), Element('content', {}, [
  Element('img', {
    src: './picker-visible.png',
    style: 'width: 60%;'
  })
]), new_footer());
-add_slide(Element('h1', {}, ['Eval']), Element('content', {}, [
  Element('img', {
    src: './class-overview.png',
    style: 'width: 60%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Implications']), Element('content', {}, [Markdown("\n* Abstractions scale up\n* Refactoring over planning\n* Direct manipulation in code\n* Macros & UI move to user-land\n* Leverage cultural familarity with web")]), new_footer());
add_slide(Element('h1', {}, ['Thx!']), Element('content', {}, [Markdown("\n## Put me in touch\n- PhD\n- Startup\n  - MSc's who are hackers, designers & academics?\n- R&D\n- I am around: +45 60 65 70 59!\n")]), new_footer());