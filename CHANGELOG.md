![](logo.png)
===================

#ChangeLog#

##Here is the changelog of the CubeEngine


###alpha v0.13 7.9.2015###
* Add external "converter" libary for handling model convert, and separate the connection between the Engine adn Assimp.
* Add two new classes "skeleton" & "EntityNode", Skeleton use to update the bone and node transformation while Entity is playing skin animation. EntityNode use to represent the Node(typically the Bone) in the model,you can use it to get the bone(node) transform matrix or simplly attach something(eg. weapons. ) in the specified entity.
* Fix the bug which cause the relative path of the texture image invalid.
* Add new model file format "*.tzw",loading and writing. currently it only support static models, the models which have skin animation still need Assimp support(not directly like previous versions but via the "external/converter"). In the future, I will completely strip down the ASSIMP codes from Engine. The next step, I plan to write an utility application (maybe named "CubeConverter", use the "external/converter" code base) which will use Assimp to convert others models file to ".tzw" files,and <b>only guarantee</b> the engine can parse & write "*.tzw" file format.
* Add dependency of TUtility libary (see <a href="https://github.com/tangziwen/TUtility">https://github.com/tangziwen/TUtility</a> for details).
* Add a Class called "Label" which can do some simple text rendering.
* Refine the class "Sprite".

###alpha v0.11c 5.18.2015###
* fix crash when RenderTarget's camera is not set.
* fix wrong shadow effect when multiple resize.
* change some the code of the sprite.
* fix Node can only be addChild once a time.
* add a 2D primitive - Rect.
* add basic button widget
* add eventMgr which can handle all sort of events


###alpha v0.11b 3.24.2015###
* fix shader compile error in some machine.
* fix engine C++ part compile error in some machine.

###alpha v0.11 3.23.2015###
* add two water simulation classes - waterNaive & waterPG(Projected grid water),use waterNaive to simulate a small water area, use waterPG to simulate unlimited water surface like ocean.
* add RenderTarget class, you can use RenderTarget to control the render pipeline.for example you can use it to simulate mirror.
* Lot's of bug Fixed.

###alpha v0.10 3.10.2015###
* fix the normalmapping bug
* add the "RenderTarget" class,you can use it to simulate such as mirror effect
* add the "Water" class , begin to add support of the water simulation, currently, it caculate on CPU side,
and lack of some features.

###alpha v0.09b 3.10.2015###
* drop the support of the forward-rendering.

###alpha v0.09a 3.9.2015###
* support for cascaded shadow maps(CSM) for directional light,you can use it for huge scene shadow generation.

###alpha v0.08b 2.2.2015###
* support multiple shadowMap(finally support directional light)
* code refactor
* add a brief chinese doc

###alpha v0.08 1.27.2015###
* Add AABB
* Add Ray
* Fix material BUG
* SkyBox finnaly support in deferred-rendering mode
* Add Bloom Effect
* Add simple 2D element
* Add Node Groupping 

###alpha v0.07 12.18.2014###
* add basic deferred-shading support, the deferred shading system can allow you create lots of Lights.
* lot's of bug fixed

###alpha v0.06 12.2.2014###
* Refactor lot's of code
* Fix the Terrain's default position

###alpha v0.05 11.24.2014###
* Now lots's of Classes are inherited from the 'Node' class, you can easy handle them(Entity,Camera ,etc) hierarchically via unified interface  
engine now can render terrian from a height map , see demo

###alpha v0.04 11.19.2014#
* Add normal mapping

###alpha v0.03-1 11.17.2014#
* Refactor code

###alpha v0.03 11.13.2014#
* Add skybox
* Fix texture's path 
* Refactor code

###alpha v0.02 11.10.2014#
* Add skeleton animation
* Add shadow map

###alpha v0.01 10.30.2014#
* Basic camera
* Support for model loading.
* Material system
* Basic Lighting : directionalLight , spotLight , pointLight