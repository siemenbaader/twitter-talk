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
add_slide(Element('h1', {}, ['Problem']), Element('content', {}, [Markdown("## Design Materials\n  - thinking with your hands\n  - switching levels of abstractions\n  - from specific to abstraction\n  - lateral exploration of alternatives\n  \nUseful for learning & making ill-defined new")]), new_footer());
add_slide(Element('object', {
  data: '../integrated/sketchcode.xhtml',
  style: 'width: 100%; height: 768px;'
}));
add_slide(Element('h1', {}, ['Concepts']), Element('content', {}, [
  Element('object', {
    data: './concepts.html',
    style: 'width: 100%; height: 428px; overflow-y: scroll;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['REPL']), Element('content', {}, [
  Element('img', {
    src: './ui-repl.png',
    style: 'width: 60%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Example']), Element('content', {}, [
  Element('img', {
    src: './picker-visible.png',
    style: 'width: 60%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Example']), Element('content', {}, [
  Element('img', {
    src: './class-overview.png',
    style: 'width: 60%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Cognition']), Element('content', {}, [Markdown("\n* **Relevance Theory**\n  * coding & decoding\n  * leverage common context\n  * ostensions\n  \n* **In SketchCode:**\n  * decouple abstractions & syntax (less decoding)\n  * rich views (better ostensions)")]), new_footer());
add_slide(Element('h1', {}, ['Cognition']), Element('content', {}, [Markdown("\n* **Reflective Practice**\n  * move-see-move\n  * surprises & re-interpretations propel process\n  * situated learning\n  \n* **In SketchCode:**\n  * does not enforce macros up-front\n  * macros cheap to make\n  * code gets affordances\n  * beating into shape vs planning\n  * unobtrusive (unplanned) bookkeeping")]), new_footer());
add_slide(Element('h1', {}, ['Cognition']), Element('content', {}, [Markdown("\n* **Distributed Cognition**\n  * thinking spans persons, artifacts & time\n  * some information easier deduced from environment\n  * humans: decisions & creativity\n  * computer: storage & computation\n  \n* **In SketchCode:**\n  * working at level of mental abstraction\n  * smarter source")]), new_footer());
add_slide(Element('h1', {}, ['Process']), Element('content', {}, [Markdown("\n- Prototyping\n- Cognitive theories of designers work\n- User centered process\n- Iterate theories & prototype against concrete use cases\n")]), new_footer());
add_slide(Element('h1', {}, ['Observations']), Element('content', {}, [
  Element('img', {
    src: './observations.png',
    style: 'width: 80%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Use Cases']), Element('content', {}, [
  Element('img', {
    src: './shadowing.jpg',
    style: 'width: 80%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Interviews']), Element('content', {}, [
  Element('img', {
    src: './interview-findings.png',
    style: 'width: 80%;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Own Code']), Element('content', {}, [
  Element('object', {
    data: './state-code.html',
    style: 'width: 100%; height: 400px; overflow-y: scroll;'
  }), Element('img', {
    src: './state-machine-large.png',
    style: 'position: absolute; top: -50px; left: 380px;'
  })
]), new_footer());
add_slide(Element('h1', {}, ['Dialog']), Element('content', {}, [Markdown("\n- features sketched & discussed\n- representations matter\n- informants were not customers\n ")]), new_footer());
add_slide(Element('h1', {}, ['Balancing']), Element('content', {}, [Markdown("\n## Three poles in innovative design\n\n- Users & Current Practice\n- Technology\n- Guiding Theory\n ")]), new_footer());
add_slide(Element('h1', {}, ['Balancing']), Element('content', {}, [Markdown("\n## Users & Current Practice\n  - ethnographic    methods\n     - rich\n     - articulate the tacit\n     - surprisingly fast\n  - being a user provides richest inspiration, but:\n  - ensure adoption (learning & cultural familiarity)\n  - PD not for radical innovation\n  - users suggest optimizations\n  ")]), new_footer());
add_slide(Element('h1', {}, ['Balancing']), Element('content', {}, [Markdown("\n## Technology\n\n- *The Driver.*\n- must be understood in detail\n- may lead to sub-optimizations\n- most toolmakers are techies\n")]), new_footer());
add_slide(Element('h1', {}, ['Balancing']), Element('content', {}, [Markdown("\n## Guiding Theories\n\n- allow work on paradigms rather than specific fixes\n- allow testing paradigms vs. implementations\n- not often used\n- analytical, not generative\n- choice & use needs empirical grounding\n- embarrass current tools\n")]), new_footer());
add_slide(Element('h1', {}, ['Onward']), Element('content', {}, [Markdown("\n## If I were to continue...\n\n- true iterations for real use\n- crafts:\n  - observing\n  - sketching\n  - user dialog\n  - balance\n- critical mass: self-designing system\n")]), new_footer());