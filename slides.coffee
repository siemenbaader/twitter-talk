
viewport = document.getElementsByTagName('div')[0]
window.slide_container  = slide_container = Element 'slides', {}
slides = []
window.index = index = 0
slide_width = 1024

add_slide = (element)->
  slide = Element 'slide', {}, [element]
  slides.push slide
  slide_container.append slide
  


add_slide("One")
add_slide("Two")
add_slide Element "pre", {style: "margin: 30px; background-color: black; color: white;"},["code , \n\ncode"]


add_slide(Element 'object', {data: 'file:///home/siemen/thesis/refactor-intentions-27mar2011/sketchcode.xhtml', style: 'width: 100%; height: 768px;'})

# add_slide(Element 'input', {onkeydown: 'event.stopPropagation();event.preventDefault();'} )

viewport.append slide_container

document.addEventListener('keydown', ( (ev)->
  if ev.keyIdentifier == "Left" and ev.altKey
    index = Math.max( index - 1, 0)
    slide_container.style.left = - (index * slide_width )+ 'px'
    return
  
  if ev.keyIdentifier == "Right" and ev.altKey
    index = Math.min(slides.length - 1, index + 1)
    slide_container.style.left = - (index  * slide_width )+ 'px'
    return
  ), true)


