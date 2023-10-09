!classDefinition: #MarsRoverTests category: 'MarsRover'!
TestCase subclass: #MarsRoverTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 17:15:06'!
test01InitializingRoverAndItStaysInThatSpot
	|myRover |
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: ''.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#North)).

	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:47:01'!
test02ProccessMovesTheRoverToTheCorrectPositionForwardEast
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: East new.
	myRover process: 'f'.
		
	self assert: (myRover position = (1@0)).
	self assert: (myRover direction value = (#East)).


	
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:47:15'!
test02ProccessMovesTheRoverToTheCorrectPositionForwardWest
	|myRover|
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'f'.
		
	self assert: (myRover position = (-1@0)).
	self assert: (myRover direction value = (#West)).

	
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:47:25'!
test04ProccessMovesTheRoverToTheCorrectPositionForwardSouth
	|myRover|
	myRover := MarsRover withPosition: (0@0) andDirection: South new.
	myRover process: 'f'.
		
	self assert: (myRover position = (0@-1)).
	self assert: (myRover direction value = (#South)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:47:30'!
test05ProccessMovesTheRoverToTheCorrectPositionForwardNorth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: 'f'.
		
	self assert: (myRover position = (0@1)).
	self assert: (myRover direction value = (#North)).! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:47:41'!
test06ProccessMovesTheRoverToTheCorrectPositionBackNorth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: 'b'.
		
	self assert: (myRover position = (0@-1)).
	self assert: (myRover direction value = (#North)).
	

	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:47:55'!
test07ProccessMovesTheRoverToTheCorrectPositionBackSouth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: South new.
	myRover process: 'b'.
		
	self assert: (myRover position = (0@1)).
	self assert: (myRover direction value = (#South)).

	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:48:02'!
test08ProccessMovesTheRoverToTheCorrectPositionBackEast
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: East new.
	myRover process: 'b'.
		
	self assert: (myRover position = (-1@0)).
	self assert: (myRover direction value = (#East)).

	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:48:09'!
test09ProccessMovesTheRoverToTheCorrectPositionBackWest
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'b'.
		
	self assert: (myRover position = (1@0)).
	self assert: (myRover direction value = (#West)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:57:26'!
test10ProccessLeftMovesThePositionCorrectlyEast
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: East new.
	myRover process: 'l'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#North)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:58:01'!
test11ProccessLeftMovesThePositionCorrectlyNorth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: 'l'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#West)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:58:07'!
test12ProccessLeftMovesThePositionCorrectlySouth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: South new.
	myRover process: 'l'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#East)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 15:58:27'!
test13ProccessLeftMovesThePositionCorrectlyWest
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'l'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#South)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:01:22'!
test14ProccessRightMovesThePositionCorrectlySouth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: South new.
	myRover process: 'r'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#West)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:03:19'!
test15ProccessRightMovesThePositionCorrectlyNorth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: 'r'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#East)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:04:24'!
test16ProccessRightMovesThePositionCorrectlyEast
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: East new.
	myRover process: 'r'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#South)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:00:47'!
test17ProccessRightMovesThePositionCorrectlyWest
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'r'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#North)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:09:25'!
test18ProccessMultipleCommandsMovesThePositionCorrectlyForwardNorth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: 'ff'.
		
	self assert: (myRover position = (0@2)).
	self assert: (myRover direction value = (#North)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:10:59'!
test19ProccessMultipleCommandsMovesThePositionCorrectlyBackSouth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: South new.
	myRover process: 'bb'.
		
	self assert: (myRover position = (0@2)).
	self assert: (myRover direction value = (#South)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:11:27'!
test19ProccessMultipleCommandsMovesThePositionCorrectlyLeftNorth
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: 'll'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#South)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:11:56'!
test20ProccessMultipleCommandsMovesThePositionCorrectlyRightWest
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'll'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#East)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 17:14:21'!
test21ProccessMultipleCommandsMovesTheRoverCorrectly
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'ffrlbrlnnr'.
		
	self assert: (myRover position = (-1@0)).
	self assert: (myRover direction value = (#West)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:43:43'!
test22ProccessMultipleCommandsMovesTheRoverCorrectly
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'ffffflffffflffffflfffff'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#North)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 16:47:50'!
test23ProccessInvalidComand
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'x'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#West)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 17:15:29'!
test24ProccessMultipleInvalidComand
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: West new.
	myRover process: 'xkaaje'.
		
	self assert: (myRover position = (0@0)).
	self assert: (myRover direction value = (#West)).
	! !

!MarsRoverTests methodsFor: 'testing' stamp: 'zm 10/9/2023 17:16:47'!
test24ProccessValidAndInvalidComands
	|myRover|
	
	myRover := MarsRover withPosition: (0@0) andDirection: North new.
	myRover process: 'ffx'.
		
	self assert: (myRover position = (0@2)).
	self assert: (myRover direction value = (#North)).
	! !


!classDefinition: #Compass category: 'MarsRover'!
Object subclass: #Compass
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!Compass methodsFor: 'values' stamp: 'zm 10/9/2023 14:48:47'!
value
	^value.! !


!Compass methodsFor: 'move' stamp: 'zm 10/9/2023 15:35:25'!
goDown: coordinates

	self subclassResponsibility! !

!Compass methodsFor: 'move' stamp: 'zm 10/9/2023 16:39:12'!
goLeft

	self subclassResponsibility! !

!Compass methodsFor: 'move' stamp: 'zm 10/9/2023 16:39:19'!
goRight

	self subclassResponsibility! !

!Compass methodsFor: 'move' stamp: 'zm 10/9/2023 15:33:41'!
goUp: coordinates

	self subclassResponsibility! !


!classDefinition: #East category: 'MarsRover'!
Compass subclass: #East
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!East methodsFor: 'initialization' stamp: 'zm 10/9/2023 17:09:37'!
initialize
	value := #East.! !


!East methodsFor: 'move' stamp: 'zm 10/9/2023 15:43:12'!
goDown: coordinates 
	^coordinates - (1@0)! !

!East methodsFor: 'move' stamp: 'zm 10/9/2023 16:35:10'!
goLeft
	^North new.! !

!East methodsFor: 'move' stamp: 'zm 10/9/2023 16:35:16'!
goRight
	^South new.! !

!East methodsFor: 'move' stamp: 'zm 10/9/2023 15:42:58'!
goUp: coordinates
	^coordinates + (1@0)! !


!classDefinition: #North category: 'MarsRover'!
Compass subclass: #North
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!North methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:44:29'!
nextPositionBackwardsFromPostion: aPosition 
	^aPosition - (0@1).! !

!North methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:42:36'!
nextPositionFowardFromPosition: aPosition 
	^aPosition + (0@1)! !

!North methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:09:39'!
toMyLeft
	^West new.! !

!North methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:17:43'!
toMyRight
	^East new.! !


!North methodsFor: 'initialization' stamp: 'zm 10/9/2023 17:09:42'!
initialize
	value := #North.! !


!North methodsFor: 'move' stamp: 'zm 10/9/2023 15:35:25'!
goDown: coordinates 
	^coordinates - (0@1)! !

!North methodsFor: 'move' stamp: 'zm 10/9/2023 16:34:45'!
goLeft
	^West new.! !

!North methodsFor: 'move' stamp: 'zm 10/9/2023 16:35:03'!
goRight
	^East new.! !

!North methodsFor: 'move' stamp: 'zm 10/9/2023 15:33:41'!
goUp: coordinates
	^coordinates + (0@1)! !


!classDefinition: #South category: 'MarsRover'!
Compass subclass: #South
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!South methodsFor: 'initialization' stamp: 'zm 10/9/2023 17:09:47'!
initialize
	value := #South.! !


!South methodsFor: 'move' stamp: 'zm 10/9/2023 15:37:44'!
goDown: coordinates 
	^coordinates + (0@1)! !

!South methodsFor: 'move' stamp: 'zm 10/9/2023 16:34:17'!
goLeft
	^East new.! !

!South methodsFor: 'move' stamp: 'zm 10/9/2023 16:34:07'!
goRight
	^West new.! !

!South methodsFor: 'move' stamp: 'zm 10/9/2023 15:37:35'!
goUp: coordinates
	^coordinates - (0@1)! !


!classDefinition: #West category: 'MarsRover'!
Compass subclass: #West
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!West methodsFor: 'initialization' stamp: 'zm 10/9/2023 17:09:54'!
initialize
	value := #West.! !


!West methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:45:30'!
nextPositionBackwardsFromPostion: aPosition 
	^aPosition + (1@0).! !

!West methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:41:52'!
nextPositionFowardFromPosition: aPosition 
	^aPosition - (1@0).! !

!West methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:09:50'!
toMyLeft
	^South new.! !

!West methodsFor: 'accessing' stamp: 'Joaco 10/7/2023 16:18:12'!
toMyRight
	^North new.! !


!West methodsFor: 'move' stamp: 'zm 10/9/2023 15:42:44'!
goDown: coordinates 
	^coordinates + (1@0)! !

!West methodsFor: 'move' stamp: 'zm 10/9/2023 16:33:36'!
goLeft
	^South new.! !

!West methodsFor: 'move' stamp: 'zm 10/9/2023 16:33:56'!
goRight
	^North new.! !

!West methodsFor: 'move' stamp: 'zm 10/9/2023 15:42:29'!
goUp: coordinates
	^coordinates - (1@0)! !


!classDefinition: #MarsRover category: 'MarsRover'!
Object subclass: #MarsRover
	instanceVariableNames: 'position direction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'comparing' stamp: 'Joaco 10/7/2023 16:04:47'!
isInPosition: aPosition pointingTo: aDirection 
	^position = aPosition and: [ direction value = aDirection ].! !

!MarsRover methodsFor: 'comparing' stamp: 'Joaco 10/7/2023 17:06:23'!
isInvalidRoverCommand: aCommand

	^ ((aCommand = $f) not and: [(aCommand = $b) not and: [(aCommand = $l) not and: [ (aCommand = $r) not]]]).! !


!MarsRover methodsFor: 'initialization' stamp: 'zm 10/9/2023 14:31:29'!
initializeWithPosition: aPosition andDirection: aDirection 
	position := aPosition.
	direction := aDirection.! !


!MarsRover methodsFor: 'processing' stamp: 'zm 10/9/2023 16:46:18'!
isCommandValid: aCommand
	^ ((aCommand = $f) not and: [(aCommand = $b) not and: [(aCommand = $l) not and: [ (aCommand = $r) not]]]).! !

!MarsRover methodsFor: 'processing' stamp: 'zm 10/9/2023 17:13:25'!
process: aCommandList
	
	aCommandList do: [ :aCommand |  
		(self isCommandValid: aCommand) ifTrue: [^self].
		aCommand = $f ifTrue: [	 position := direction goUp:  position ].
		aCommand = $b ifTrue: [ position := direction goDown: position ].	
		aCommand = $l ifTrue: [ direction :=  direction goLeft ].
		aCommand = $r ifTrue: [ direction := direction goRight ].
		].
! !


!MarsRover methodsFor: 'information' stamp: 'zm 10/9/2023 14:35:54'!
direction
	^direction! !

!MarsRover methodsFor: 'information' stamp: 'zm 10/9/2023 14:35:29'!
position
	^position! !


!MarsRover methodsFor: 'error handling' stamp: 'zm 10/9/2023 16:19:19'!
InvalidMarsRoverCommand
	^'InvalidCommand'! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'MarsRover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'instance creation' stamp: 'zm 10/9/2023 14:31:09'!
withPosition: aPosition andDirection: aDirection 
	^self new initializeWithPosition: aPosition andDirection: aDirection ! !
