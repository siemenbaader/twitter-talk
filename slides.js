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
add_slide(Element('h1', {}, ['What?']), Element('content', {}, [Markdown("## SketchCode\n\nSupporting Programming as a Process of Exploration and Refinement")]), new_footer());
add_slide(Element('h1', {}, ['Outline']), Element('content', {}, [Markdown("1. Philosophy\n1. Cognition of Coding\n2. Concept & Demo\n3. Perspectives")]), new_footer());
add_slide(Element('h1', {}, ['Philosophy']), Element('content', {}, [Markdown("## Coding is Exploration\n\n* Understanding of user needs & implementations evolve\n* Agile is a testament of this\n* Design professions deal most explicitly with exploration\n")]), new_footer());
add_slide(Element('h1', {}, ['Cognition']), Element('content', {}, [Markdown("* **Reflective Practice**\n  * acting & reflecting\n  * re-interpretations propel designs\n* **Distributed Cognition**\n  * machines store, compute and display\n  * humans are creative & decide\n* **Relevance Theory**\n  * coding & decoding\n  * relation to known concepts\n  * ostensions")]), new_footer());
add_slide(Element('h1', {}, ['Problems']), Element('content', {}, [Markdown("\n## Problems with current tools\n- Poor direct manipulation\n- Humans bridge abstractions & resolve links\n- Syntax constrains relevance\n- APIs, TDD & RCS favor planning over situated learning\n")]), new_footer());
add_slide(Element('h1', {}, ['Interact']), Element('content', {}, [
  Element('img', {
    src: "ui-repl.png",
    style: 'width: 60%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Explore']), Element('content', {}, [
  Element('img', {
    src: "./history.png",
    style: 'width: 60%; '
  })
]), new_footer());
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
/*

- class overview
- CPS
- state machines
*/
add_slide(Element('h1', {}, ['Smart Src']), Element('content', {}, [
  Element('img', {
    src: './class-overview.png',
    style: 'width: 60%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Rich UIs']), Element('content', {}, [
  Element('img', {
    src: './picker-visible.png',
    style: 'width: 60%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Abstraction']), Element('content', {}, [
  Element('object', {
    data: './state-code.html',
    style: 'width: 100%; height: 400px; overflow-y: scroll;'
  }), Element('img', {
    src: './state-machine-large.png',
    style: 'position: absolute; top: -50px; left: 380px;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Thx!']), Element('content', {}, [Markdown("\n## Next Steps\n* Startup\n* R&D project\n* Let's talk, tell your friends!\n\nsiemenbaader@gmail.com\n")]), new_footer());