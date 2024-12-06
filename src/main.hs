myhtml :: String
myhtml = makeHtml "My page title" "My page content"

html_ :: String -> String
html_ content = "<html>" <> content <> "</html>"

body_ :: String -> String
body_ content = "<body>" <> content <> "</body>"

head_ :: String -> String
head_ content = "<head>" <> content <> "</head>"

title_ :: String -> String
title_ content = "<title>" <> content <> "</title>"


makeHtml :: String -> String -> String
makeHtml title body = html_ (head_ (title_ title) <> body_ body)

-- wrapHtml :: String -> String
-- wrapHtml content = "<html><body>" <> content <> "</body></html>"



main :: IO ()
main = putStrLn myhtml



