
viewport = document.getElementsByTagName('div')[0]
window.slide_container  = slide_container = Element 'slides', {}
slides = []
window.index = index = 0
slide_width = 1024

add_slide = (elements...)->
  slide = Element 'slide', {}, elements
  slides.push slide
  slide_container.append slide


viewport.append slide_container

document.addEventListener('keydown', ( (ev)->
  if ev.keyIdentifier == "Left"
    index = Math.max( index - 1, 0)
    slide_container.style.left = - (index * slide_width )+ 'px'
    return
  
  if ev.keyIdentifier == "Right"
    index = Math.min(slides.length - 1, index + 1)
    slide_container.style.left = - (index  * slide_width )+ 'px'
    return
  ), true)



new_footer = ()->
  Element('footer', {}, [Markdown("""
    ![](itu_logo.jpg)
    <br/>Siemen Baader  <br/>
    siemenbaader@gmail.com """)])


# add_slide Element 'img', {src: 'bio.png'}

add_slide Element('h1', {}, ['What?']),
  Element('content', {}, [Markdown("""
    ## SketchCode
    
    Supporting Programming as a Process of Exploration and Refinement
  """)]), new_footer()



add_slide Element('h1', {}, ['Outline']),
  Element('content', {}, [Markdown("""
    1. Philosophy
    1. Cognition of Coding
    2. Concept & Demo
    3. Perspectives
  """)]), new_footer()

add_slide Element('h1', {}, ['Philosophy']),
  Element('content', {}, [Markdown("""
    ## Coding is Exploration
    
    * Understanding of user needs & implementations evolve
    * Agile is a testament of this
    * Design professions deal most explicitly with exploration
    
  """)]), new_footer()

add_slide Element('h1', {}, ['Cognition']),
  Element('content', {}, [Markdown("""
    * **Reflective Practice**
      * acting & reflecting
      * re-interpretations propel designs
    * **Distributed Cognition**
      * machines store, compute and display
      * humans are creative & decide
    * **Relevance Theory**
      * coding & decoding
      * relation to known concepts
      * ostensions
  """)]), new_footer()


add_slide Element('h1', {}, ['Problems']),
  Element('content', {}, [Markdown("""
  
  ## Problems with current tools
  - Poor direct manipulation
  - Humans bridge abstractions & resolve links
  - Syntax constrains relevance
  - APIs, TDD & RCS favor planning over situated learning

  """)]), new_footer()


# Direct Manipulation
add_slide Element('h1', {}, ['Interact']),
  Element('content', {}, [Element('img', {src: "file:///home/siemen/thesis/lyx-report/img/entry-points-repl/ui-repl.png", style: 'width: 60%;'})]), new_footer()

# REPL proto??

# Bookkeeping
add_slide Element('h1', {}, ['Explore']),
  Element('content', {}, [Element('img', {src: "file:///home/siemen/thesis/lyx-report/img/history.png", style: 'width: 60%; '})]), new_footer()

# Prototype
add_slide Element 'object', {data: 'file:///home/siemen/thesis/integrated/sketchcode.xhtml', style: 'width: 100%; height: 768px;'}

# Concepts

add_slide Element('h1', {}, ['Defs']), Element('content', {}, [ Element( 'object', {data: 'file:///home/siemen/thesis/presentations/twitter-26aug2011/concepts.html', style: 'width: 100%; height: 428px; overflow-y: scroll;'})]), new_footer()

# Perspectives
###

- class overview
- CPS
- state machines
###

add_slide Element('h1', {}, ['Smart Src']), Element('content', {}, [ Element( 'img', {src: 'file:///home/siemen/thesis/presentations/twitter-26aug2011/class-overview.png', style: 'width: 60%;'})]), new_footer()


## color picker

add_slide Element('h1', {}, ['Rich UIs']), Element('content', {}, [ Element( 'img', {src: 'file:///home/siemen/thesis/lyx-report/img/concepts/picker-visible.png', style: 'width: 60%;'})]), new_footer()

add_slide Element('h1', {}, ['Abstraction']), Element('content', {}, [ Element( 'object', {data: 'file:///home/siemen/thesis/presentations/twitter-26aug2011/state-code.html', style: 'width: 100%; height: 400px; overflow-y: scroll;'}),
Element( 'img', {src: 'file:///home/siemen/thesis/presentations/twitter-26aug2011/state-machine-large.png', style: 'position: absolute; top: -50px; left: 380px;'})   ]), new_footer()



add_slide Element('h1', {}, ['Thx!']),
  Element('content', {}, [Markdown("""
  
  ## Next Steps
  * Startup
  * R&D project
  * Let's talk, tell your friends!
  
  siemenbaader@gmail.com

  """)]), new_footer()


