
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
    
    Turning code into a design material
  """)]), new_footer()

add_slide Element('h1', {}, ['Problem']),
  Element('content', {}, [Markdown("""
  ## Design Materials
    - thinking with your hands
    - switching levels of abstractions
    - from specific to abstraction
    - lateral exploration of alternatives
    
  Useful for learning & making ill-defined new
  """)]), new_footer()


# Prototype
add_slide Element 'object', {data: '../integrated/sketchcode.xhtml', style: 'width: 100%; height: 768px;'}

# Concepts

add_slide Element('h1', {}, ['Concepts']), Element('content', {}, [ Element( 'object', {data: './concepts.html', style: 'width: 100%; height: 428px; overflow-y: scroll;'})]), new_footer()

add_slide Element('h1', {}, ['REPL']), Element('content', {}, [ Element( 'img', {src: './ui-repl.png', style: 'width: 60%;'})]), new_footer()


add_slide Element('h1', {}, ['Example']), Element('content', {}, [ Element( 'img', {src: './picker-visible.png', style: 'width: 60%;'})]), new_footer()

add_slide Element('h1', {}, ['Example']), Element('content', {}, [ Element( 'img', {src: './class-overview.png', style: 'width: 60%;'})]), new_footer()


add_slide Element('h1', {}, ['Cognition']),
  Element('content', {}, [Markdown("""

    * **Relevance Theory**
      * coding & decoding
      * leverage common context
      * ostensions
      
    * **In SketchCode:**
      * decouple abstractions & syntax (less decoding)
      * rich views (better ostensions)
  """)]), new_footer()

add_slide Element('h1', {}, ['Cognition']),
  Element('content', {}, [Markdown("""

    * **Reflective Practice**
      * move-see-move
      * surprises & re-interpretations propel process
      * situated learning
      
    * **In SketchCode:**
      * does not enforce macros up-front
      * macros cheap to make
      * code gets affordances
      * beating into shape vs planning
      * unobtrusive (unplanned) bookkeeping
  """)]), new_footer()

add_slide Element('h1', {}, ['Cognition']),
  Element('content', {}, [Markdown("""

    * **Distributed Cognition**
      * thinking spans persons, artifacts & time
      * some information easier deduced from environment
      * humans: decisions & creativity
      * computer: storage & computation
      
    * **In SketchCode:**
      * working at level of mental abstraction
      * smarter source
  """)]), new_footer()



add_slide Element('h1', {}, ['Process']),
  Element('content', {}, [Markdown("""
  
  - Prototyping
  - Cognitive theories of designers work
  - User centered process
  - Iterate theories & prototype against concrete use cases

  """)]), new_footer()
  
add_slide Element('h1', {}, ['Observations']), Element('content', {}, [ Element( 'img', {src: './observations.png', style: 'width: 80%;'})]), new_footer()

# Use Cases
add_slide Element('h1', {}, ['Use Cases']), Element('content', {}, [ Element( 'img', {src: './shadowing.jpg', style: 'width: 80%;'})]), new_footer()

# Interviews

add_slide Element('h1', {}, ['Interviews']), Element('content', {}, [ Element( 'img', {src: './interview-findings.png', style: 'width: 80%;'})]), new_footer()

add_slide Element('h1', {}, ['Own Code']), Element('content', {}, [ Element( 'object', {data: './state-code.html', style: 'width: 100%; height: 400px; overflow-y: scroll;'}),
Element( 'img', {src: './state-machine-large.png', style: 'position: absolute; top: -50px; left: 380px;'})   ]), new_footer()

# Dialog

add_slide Element('h1', {}, ['Dialog']),
  Element('content', {}, [Markdown("""
  
  - features sketched & discussed
  - representations matter
  - informants were not customers
   
  """)]), new_footer()


add_slide Element('h1', {}, ['Balancing']),
  Element('content', {}, [Markdown("""
  
  ## Three poles in innovative design
  
  - Users & Current Practice
  - Technology
  - Guiding Theory
   
  """)]), new_footer()

add_slide Element('h1', {}, ['Balancing']),
  Element('content', {}, [Markdown("""
  
  ## Users & Current Practice
    - ethnographic    methods
       - rich
       - articulate the tacit
       - surprisingly fast
    - being a user provides richest inspiration, but:
    - ensure adoption (learning & cultural familiarity)
    - PD not for radical innovation
    - users suggest optimizations
    
  """)]), new_footer()


add_slide Element('h1', {}, ['Balancing']),
  Element('content', {}, [Markdown("""
  
  ## Technology
  
  - *The Driver.*
  - must be understood in detail
  - may lead to sub-optimizations
  - most toolmakers are techies

  """)]), new_footer()

add_slide Element('h1', {}, ['Balancing']),
  Element('content', {}, [Markdown("""
  
  ## Guiding Theories
  
  - allow work on paradigms rather than specific fixes
  - allow testing paradigms vs. implementations
  - not often used
  - analytical, not generative
  - choice & use needs empirical grounding
  - embarrass current tools

  """)]), new_footer()


add_slide Element('h1', {}, ['Onward']),
  Element('content', {}, [Markdown("""
  
  ## If I were to continue...
  
  - true iterations for real use
  - crafts:
    - observing
    - sketching
    - user dialog
    - balance
  - critical mass: self-designing system
  
  """)]), new_footer()


#     * *Reflective Practive*
#     * *Distributed Cognition*



