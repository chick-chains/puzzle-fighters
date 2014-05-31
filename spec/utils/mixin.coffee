

describe "Mixins", ->
	When ->
		class MainClassMixed extends G.u.mixOf @MainClass, @Mixin
		@mixedObject = new MainClassMixed();
	describe "MainClass method should win over mixin method",->
		Given ->
			class @MainClass
				hello:()->
					"hello"
			class @Mixin
				hello:()->
					"hello2"
		Then ->
			expect( @mixedObject.hello()).toBe("hello");
	describe "Main class should inherit from mixed in class",->
		Given ->
			class @MainClass
				hello:()->
					"hello"
			class @Mixin
				hello2:()->
					"hello2"
		Then -> 
			expect(@mixedObject.hello2()).toBe("hello2")