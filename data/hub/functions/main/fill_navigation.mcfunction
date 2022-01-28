item modify entity @s hotbar.0 hub:fill_navigation

data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]
data remove storage hub:hub navigation_book[0]

execute store result score lines hub.Variables run data get storage hub:hub navigation_book
execute unless score lines hub.Variables matches 0 run function hub:main/fill_navigation