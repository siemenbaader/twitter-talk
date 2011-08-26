
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


add_slide Element 'img', {src: 'bio.png'}

add_slide Element('h1', {}, ['Outline']),
  Element('content', {}, [Markdown("""
    1. Cognition of Coding
    2. Demo
    3. Examples
  """)]), new_footer()

add_slide Element('h1', {}, ['Philosophy']),
  Element('content', {}, [Markdown("""
    ## Coding is Exploration
    
    * Understanding of user needs & implementations evolve
    * Agile is a testament of this
    * Design professions deal most explicitly with exploration
    
  """)]), new_footer()

add_slide Element('h1', {}, ['Exploration']),
  Element('content', {}, [Markdown("""
    ## Reflective Practice
    
    * A cycle of acting & judging outcomes
    * Surprises frame new understandings ( Re-Interpretations )
    * New understandings == simpler models (Refactoring)
    * Sketching: Exploring quickly without fine detail (Spikes)

-- Schön (1983), Cross (2006)
    
  """)]), new_footer()

add_slide Element('h1', {}, ['Exploration']),
  Element('content', {}, [Markdown("""
    ## Reflective Practice in Coding
    
    * REPL, refactoring
    * Coding, running, **debugging**
    * Designs evolve: 
      * OS Threads vs event machines
      * Relational DBs vs NoSQL
      
    * Violations
      * No direct manipulation
      * indirect cycles
      * poor sketching material (only valid code can run)
      * tools enforce plan-driven way
  """)]), new_footer()

add_slide Element('h1', {}, ['Cognition']),
  Element('content', {}, [Markdown("""
    ## Distributed Cognition
    
    * Thought processes among humans & artifacts
      * Scrum board, watch, note taking
    * Human strengths:
      - creativity, decision making
    * Computer:
      - memory
      - symbolic manipulation
  """)]), new_footer()

add_slide Element('h1', {}, ['Cognition']),
  Element('content', {}, [Markdown("""
    ## Distributed Cognition: Violations
    
    * link resolving (text)
    * reason out behaviour
    * keep track of interdependent factors
  """)]), new_footer()

add_slide Element('h1', {}, ['Relevance']),
  Element('content', {}, [Markdown("""
    <h2>Relevance Theory</h2>
   
    Humans communicate by

    * coding & decoding
    * reference to known concepts is most efficient (inference)
    * humans point out relevant parts (ostensions)


    In Code
    
    * syntax highlighting
    * DSLs (rails)
    * Objects to represent concepts
    * text is always constrained by its grammar
    
  """)]), new_footer()






add_slide Element "pre", {style: "margin: 30px; background-color: black; color: white;"},["code , \n\ncode"]


add_slide Element 'object', {data: 'file:///home/siemen/thesis/integrated/sketchcode.xhtml', style: 'width: 100%; height: 768px;'}
