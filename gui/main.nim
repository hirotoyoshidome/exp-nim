import nigui

app.init()

# window.
var window = newWindow("test")
window.width = 600.scaleToDpi
window.height = 300.scaleToDpi

# container.
var container = newContainer()
window.add(container)

# text area.
var textArea = newTextArea()
container.add(textArea)
textArea.x = 0
textArea.y = 0
textArea.width = 200
textArea.height = 30

# button.
var button = newButton("echo")
container.add(button)
button.x = 50
button.y = 50
button.width = 50
button.height = 50


button.onClick = proc(e: ClickEvent) =
  echo textArea.text

# start.
window.show()
app.run()

