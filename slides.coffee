
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


add_slide Element('h1', {}, ['What?']),
  Element('content', {}, [Markdown("""
    ## SketchCode
    
    Turning code into design material
  """)]), new_footer()

add_slide Element('h1', {}, ['Me']),
  Element('content', {}, [Markdown("""
  
  - Siemen Baader
  - MSc in Digital Design at ITU, CPH
  - looking for new home for SketchCode
  
  """)]), new_footer()


add_slide Element('h1', {}, ['Agenda']),
  Element('content', {}, [Markdown("""
    1. Demo
    1. Process
    2. Relevance Theory
    2. Eval
    3. Implications
  """)]), new_footer()

# Prototype
add_slide Element 'object', {data: '../integrated/sketchcode.xhtml', style: 'width: 100%; height: 768px;'}

# Concepts

add_slide Element('h1', {}, ['Defs']), Element('content', {}, [ Element( 'object', {data: './concepts.html', style: 'width: 100%; height: 428px; overflow-y: scroll;'})]), new_footer()

add_slide Element('h1', {}, ['Process']),
  Element('content', {}, [Markdown("""
  
  - Cognitive theories of designers work
  - Participant observation
  - Prototype
  - Iterate theories & prototype against concrete use cases

  """)]), new_footer()

add_slide Element('h1', {}, ['Cognition']),
  Element('content', {}, [Markdown("""

    * **Relevance Theory**
      * coding & decoding
      * relation to known concepts
      * ostensions
      
    * *Reflective Practive*
    * *Distributed Cognition*
  """)]), new_footer()



add_slide Element('h1', {}, ['Eval']), Element('content', {}, [ Element( 'object', {data: './state-code.html', style: 'width: 100%; height: 400px; overflow-y: scroll;'}),
Element( 'img', {src: './state-machine-large.png', style: 'position: absolute; top: -50px; left: 380px;'})   ]), new_footer()


add_slide Element('h1', {}, ['Eval']), Element('content', {}, [ Element( 'img', {src: './picker-visible.png', style: 'width: 60%;'})]), new_footer()


add_slide Element('h1', {}, ['Implications']),
  Element('content', {}, [Markdown("""

    * Abstractions scale up
    * Refactoring over planning
    * Direct manipulation in code
    * Macros & UI move to user-land
    * Leverage cultural familarity with web
  """)]), new_footer()



add_slide Element('h1', {}, ['Thx!']),
  Element('content', {}, [Markdown("""
  
  ## Put me in touch
  - PhD
  - Startup
    - MSc's who are hackers, designers & academics?
  - R&D
  - I am around: +45 60 65 70 59!

  """)]), new_footer()


