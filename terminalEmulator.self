 '0.2.0'
 '
Copyright 2022 Russell Allen
LICENSE file for license information.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         terminalEmulator = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules terminalEmulator.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'
Copyright 2022 Russell Allen
LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2022 Russell Allen
LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            worldMorph addBackgroundMenuContributor: terminalEmulator terminalMorph.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'0.2.0\')\x7fVisibility: public'
        
         revision <- '0.2.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'terminalEmulator\')'
        
         tree <- 'terminalEmulator'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         terminalEmulator = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( |
             {} = 'Comment: I give access to the local terminalEmulator
server (assuming one is running).\x7fModuleInfo: Creator: globals terminalEmulator.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         buffer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( |
             {} = 'Comment: Buffer for Terminal\x7fModuleInfo: Creator: globals terminalEmulator buffer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: strings\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         asString = ( |
            | rawContents joinUsing: '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         at: pt Put: char IfOutside: blk = ( |
            | 
            (isOutside: pt) ifTrue: [^ blk value].
            rawContents at: pt y 
                       Put: (rawContents at: pt y) copyMutable at: pt x Put: char.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         charAt: pt IfOutside: blk = ( |
            | 
            (isOutside: pt) ifTrue: [^ blk value].
            (rawContents at: pt y) at: pt x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copy = ( |
            | 
            clone rawContents: sequence copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         height = ( |
            | rawContents size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         height: h = ( |
             ch.
            | 
            ch: height.
            ch = h ifTrue: [^ self].
            ch < h ifTrue: [h - height do: [rawContents addLast: '' padOnRight: width]].
            ch > h ifTrue: [rawContents: rawContents slice: 0 @ h].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         isOutside: pt = ( |
            | 
            (pt x >= width) || (pt y >= height)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (sequence copyRemoveAll.)'
        
         rawContents <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         size = ( |
            | 
            width @ height).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         size: pt = ( |
            | 
            height: pt y. width: pt x. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         trimTop: l = ( |
            | 
            l = 0 ifTrue: [^ self].
            rawContents: rawContents slice: l @ infinity. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         width = ( |
            | (rawContents at: 0 IfAbsent: '') size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         width: w = ( |
             cw.
            | 
            cw: width.
            cw = w ifTrue: [^ self].
            cw < w ifTrue: [rawContents mapBy: [|:l| l padOnRight: w]].
            cw > w ifTrue: [rawContents mapBy: [|:l| l slice: 0 @ w]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         connection = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator connection.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         asDaemon: s = ( |
            | 'daemon -f ', s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         close = ( |
            | 
            get: 'detach' IfFail: false. tmuxSocket closeIfFail: false. rawPort: 0. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copy = ( |
            | (clone rawPort: 0) tmuxSocket: os_file deadCopy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         escape: s = ( |
            | s copy replace: '\'' With: '\\\'').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         get: s IfFail: blk = ( |
            | 
            write: s, '\n' IfFail: [^ blk value: 'Write failed'].
            getBlockIfFail: [blk value: 'Read failed']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         open = ( |
            | 
            run: asDaemon: socat.
            "Time for socat to start listening"
            process this sleep: 1000.
            tmuxSocket: os_file openTCPHost: '127.0.0.1' Port: port asString IfFail: [|:e| error: 'f'].
            readBlockIfFail: ''.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         port = ( |
            | 
            rawPort = 0 ifTrue: [rawPort: randomPort]. rawPort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         randomPort = ( |
            | 
            random integerBetween: 10000 And: 40000).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (0)'
        
         rawPort <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         readBlockIfFail: blk = ( |
             b <- ''.
             ln <- ''.
            | 
            "Ignore any notifications"
            [ ln: tmuxSocket readLineIfFail: [^ blk value]. (ln slice: 0 @ 6) = '%begin'] 
              whileFalse.
            [ ln: tmuxSocket readLineIfFail: [^ blk value]. (ln slice: 0 @ 2) = '%e' ] 
              whileFalse: [ b: b, ln, '\n'].
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         run: s = ( |
            | 
            os command: s. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         runBackground: s = ( |
            | os command: s,  ' &'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         socat = ( |
            | 
            'socat TCP4-LISTEN:', port asString, ' EXEC:\'/usr/local/bin/terminalEmulator -C\'').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (os_file deadCopy)'
        
         tmuxSocket <- os_file deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         write: s IfFail: blk = ( |
            | tmuxSocket write: s, '\n' IfFail: [^ blk value]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         morphLabel = bootstrap define: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals rowMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator morphLabel.

CopyDowns:
globals rowMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator morphLabel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         closeButtonOn: m = ( |
             b.
            | 
            b: ui2Button copy.
            b label: 'X'.
            b target: m.
            b scriptBlock: [target animatedDelete].
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copyOn: ownerMorph = ( |
             m.
            | 
            m: resend.copy.
            m color: paint named: 'outlinerGray'.
            m borderWidth: 6.
            [ 
              m addMorphLast: expanderMorph copy.
              m addMorphLast: spacer.
            ].
            m addMorphLast: labelMorph copy label: 'Terminal'.
            m addMorphLast: spacer.
            m addMorphLast: closeButtonOn: ownerMorph.
            m beFlexible.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'terminalEmulator morphLabel'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'rowMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         spacer = ( |
            | 
            transparentSpacerMorph copyV: 6).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'morphLabel' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | terminalEmulator morphLabel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         preferences = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'preferences' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator preferences.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'preferences' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'/usr/bin/env bash -i -\')'
        
         preferredShellInvocation <- '/usr/bin/env bash -i -'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         session = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         shellConnection = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator shellConnection.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (terminalEmulator shellConnection)'
        
         connection <- bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         charBuffer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session parent charBuffer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (terminalEmulator session charBuffer)'
        
         incomingBuffer <- bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         addNewLinesIfNeeded = ( |
            | 
            [cursorPosition y >= rawContents height] whileTrue: [
              rawContents height: rawContents height + 1].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\' \')'
        
         contents <- ' '.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy contents: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         get = ( |
             c.
            | c: contents first. contents: contents slice: 1 @ infinity. c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         isEmpty = ( |
            | contents isEmpty).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         peek = ( |
            | 
            contents first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         put: char = ( |
            | 
            contents: contents, char. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         putString: str = ( |
            | 
            contents: contents, str. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         clearRenderer = ( |
            | 
            renderIgnoreFlagged: false.
            renderIntermediateChars: ''.
            renderParams: sequence copyRemoveAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copyConnectedOnShell: preferredShell = ( |
             c.
            | 
            c: copy.
            c incomingBuffer: charBuffer copy.
            c connection: shellConnection copy openOnShell: preferredShell.
            c rawContents: buffer copy.
            c rawContents size: initialSize.
            c rawContentsView: 25.
            c cursorPosition: 0 @ 0.
            "initial update"
            c updateBuffer.
            "now start background loop"
            c startUpdateLoop.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorHome = ( |
            | 
            cursorPositionInView: 0 @ 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorNext = ( |
            | 
            cursorPosition: cursorPosition x succ @ cursorPosition y. 
            cursorPosition x >= rawContents width ifTrue: [
              cursorPosition: (cursorPosition x - rawContents width) @ cursorPosition y succ].
             addNewLinesIfNeeded.
             self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorNext: n = ( |
            | n do: [cursorNext]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorPosition = ( |
            | rawCursorPosition).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorPosition: p = ( |
            | 
            p y < 0 ifTrue: [error: 'Cursor Above Top of Screen'].
            rawCursorPosition: p. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorPositionInView: pt = ( |
             topOfScreen.
            | 
            "rawContents height is number of lines in buffer (inlcuding history)
             rawContentsView is the number of lines in view, assuming bottom of view is bottom of rawContents.
            "
            topOfScreen: rawContents height - rawContentsView.
            cursorPosition: pt x @ (topOfScreen + pt y). 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorPrevious = ( |
            | 
            cursorPosition: cursorPosition x pred @ cursorPosition y. 
            cursorPosition x < 0 ifTrue: [
              cursorPosition: rawContents width @ cursorPosition y pred].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         cursorPrevious: n = ( |
            | n do: [cursorPrevious]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         disconnect = ( |
            | 
             connection close. 
            updateLoop
              ifNil: []
              IfNotNil: [updateLoop abortIfLive].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: update loop\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         handleLoop = ( |
            | [updateBuffer] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: preferences\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         initialSize = (80)@(25).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertBackspace = ( |
            | 
            insertKey: '\b'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertDownArrow = ( |
            | 
            insertKey: '\x1b[B'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fComment: ^C\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertETX = ( |
            | insertKey: '\x03'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertEnter = ( |
            | 
            insertKey: '\n'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertEscape = ( |
            | 
            insertKey: '\x1b\x1b'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         insertKey: k = ( |
            | 
            connection write: k IfFail: self. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertLeftArrow = ( |
            | 
            insertKey: '\x1B[D'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertPrintableChar: k = ( |
            | 
            insertKey: k. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertRightArrow = ( |
            | 
            insertKey: '\x1B[C'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertString: s = ( |
            | 
            s do: [|:k| insertPrintableChar: k]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertTab = ( |
            | 
            insertKey: '\t'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertUpArrow = ( |
            | 
            insertKey: '\x1B[A'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: preferences\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         maxHistory = 1000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: public state\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         publicStatePrototype = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'publicStatePrototype' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session parent publicStatePrototype.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'publicStatePrototype' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'\')'
        
         contents <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'publicStatePrototype' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (0 @ 0)'
        
         cursorPosition <- 0 @ 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'publicStatePrototype' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         render: str = ( |
            | 
            str isEmpty ifTrue: [^ self].
            [str isEmpty ifFalse: [(str copy replace: '\x1B' With: '^') printLine]].
            incomingBuffer putString: str.
            [incomingBuffer isEmpty] whileFalse: [
              renderState: renderState dispatch: incomingBuffer To: self From: renderState]. 
            trimBuffer.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: BS - Backspace
Move the cursor one position to the left\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderBackspace = ( |
            | cursorPrevious).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: BEL - Bell
Ring the bell\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderBell = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: CR - Carriage Return
Move the cursor to the beginning of the row\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderCarriageReturn = ( |
            | 
            cursorPosition: 0 @ cursorPosition y.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderCleareol = ( |
             cp.
             size.
             str.
            | 
            cp: cursorPosition.
            size: rawContents width - cursorPosition x.
            str: mutableString copySize: size FillingWith: ' '.
            renderPrintableString: str.
            cursorPosition: cp.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: CB - Cursor Forward
Move the cursor n cells back.\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderCursorBack: n = ( |
            | 
            cursorPrevious: n. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: CF - Cursor Forward
Move the cursor n cells forward.\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderCursorForward: n = ( |
            | 
            cursorNext: n. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: CUP - Cursor Position
Move cursor to position, default 1 @ 1 
(ie top left)\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderCursorPosition: pt = ( |
            | 
            ('CP', pt asString) printLine.
            "Adjust as we use 0 based indexing in internal buffer"
            cursorPositionInView: (pt x - 1) @ (pt y - 1). self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: Ignore.\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderDECSET: n = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: ED - Erase In Display
Erase various parts of the viewport\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderEraseInDisplay: n = ( |
             str.
            | 
            ('ED', n asString) printLine.
            case
             if: 0 = n Then: [| p | 
               "Clear from cursor to end of screen"
               p: cursorPosition.
               str: mutableString copySize: (rawContents height - p y) * rawContents width FillingWith: ' '.
               renderPrintableString: str.
               cursorPosition: p]
             If: 1 = n Then: [
               "Clear from top of screen to cursor"
               self]
             If: 2 = n Then: [
               "Clear whole screen and place cursor at top left"
               cursorPositionInView: 0 @ 0.
               str: mutableString copySize: (rawContentsView - 1) * rawContents width FillingWith: ' '.
               renderPrintableString: str.
               cursorPositionInView: 0 @ 0.
               self]
             If: 3 = n Then: [
               "For xterm compat - clear whole buffer"
               self]
            Else: [self "An error? Ignore"]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: EIN - Erase in Line.
Erase parts of the line\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderEraseInLine: n = ( |
             str.
            | 
            case
             if: 0 = n Then: [| p |
               "Clear from cursor to end of line"
               p: cursorPosition.
               str: mutableString copySize: (rawContents width - p x) FillingWith: ' '.
               renderPrintableString: str.
               cursorPosition: p]
             If: 1 = n Then: [
               "Clear from start of line to cursor"
               p: cursorPosition.
               cursorPosition: 0 @ p y.
               str: mutableString copySize: p y FillingWith: ' '.
               renderPrintableString: str.
               cursorPosition: p]
             If: 2 = n Then: [
               "Clear whole line"
               p: cursorPosition.
               cursorPosition: 0 @ p y.
               str: mutableString copySize: rawContents width FillingWith: ' '.
               renderPrintableString: str.
               cursorPosition: p]
            Else: [self "An error? Ignore"].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: HT - Horizontal Tabulation
Move the cursor to the next character tab stop.
(Tabstops hardwired at 8 spaces)\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderHorizontalTabulation = ( |
             s.
             t = 8.
            | 
            s: '' padOnRight: t - (cursorPosition x % t).
            renderPrintableString: s.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: LF - Line Feed
Move the cursor one row down, scrolling if neeeded\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderLineFeed = ( |
            | 
            cursorPosition: cursorPosition x @ cursorPosition y succ.
            addNewLinesIfNeeded.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: NUL - Null
NUL is ignored\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderNull = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: This is a printable character. Put on the screen and advance the cursor
(wrapping if needed)\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderPrintable: c = ( |
             pc.
            | 
            pc: c isPrintable ifTrue: [c] False: [^ ('\\x', c asByte hexPrintString) do: [|:x| renderPrintable: x]].
            rawContents at: cursorPosition Put: pc IfOutside: [error value]. 
            cursorNext.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderPrintableString: str = ( |
            | str do: [|:char| renderPrintable: char]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: Character attributes. Ignore.\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         renderSGR: n = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         resize: pt = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         setViewHeight: h = ( |
            | rawContentsView: h. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: update loop\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         startUpdateLoop = ( |
            | updateLoop: (
              process copySend: (message copy receiver: self Selector: 'handleLoop')
                  CauseOfBirth: 'terminalEmulator session') resume. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         states = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> () From: ( |
             {} = 'Comment: Basic structure is from:
https://vt100.net/emu/dec_ansi_parser
but only a small subset of codes have been
implemented.\x7fModuleInfo: Creator: globals terminalEmulator session parent states.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         csiEntry = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session parent states csiEntry.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         accumulate: buffer = ( |
             x <- ''.
            | 
            [buffer peek isDigit] whileTrue: [x: x, buffer get].
            x asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         action: buffer To: renderer = ( |
             m.
             n.
            | 
            buffer peek isDigit ifTrue: [n: accumulate: buffer].
            buffer peek asByte = 16r3B ";" ifTrue: [buffer get. m: accumulate: buffer].
             match: buffer peek
            X00_1A: [                renderer renderPrintable: buffer get.            ground]
               X1B: [    buffer get.                                                  escape]
            X1C_3E: [                renderer renderPrintable: buffer get.            ground]
               X3F: ["?" buffer get. 
                         n: accumulate: buffer.
                         'h' = buffer peek ifTrue: [ buffer get. renderer renderDECSET: n. ground]
                                            False: [ "Error? Ignore." ground]]
            X40_42: [                renderer renderPrintable: buffer get.            ground]
               X43: ["C" buffer get. renderer renderCursorForward: (n ifNil: 1).      ground]
               X44: ["D" buffer get. renderer  renderCursorBack: (n ifNil: 1).        ground]
            X45_47: [                renderer renderPrintable: buffer get.            ground]
               X48: ["H" buffer get. renderer renderCursorPosition: 1 @ 1.            ground]
               X49: [                renderer renderPrintable: buffer get.            ground]
               X4A: ["J" buffer get. renderer renderEraseInDisplay: (n ifNil: 0).     ground]
               X4B: ["K" buffer get. renderer renderEraseInLine: (n ifNil: 0).        ground]
            X4C_6C: [                renderer renderPrintable: buffer get.            ground]
               X6D: ["m" buffer get. renderer renderSGR: n.                           ground]
            X6E_FF: [                renderer renderPrintable: buffer get.            ground]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         enter = ( |
            | 
            renderer clearRenderer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         shared = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session parent states shared.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         escape = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session parent states escape.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         action: buffer To: renderer = ( |
             c.
            | 
            c: buffer get.
             match: c
            X00_1A: [renderer renderPrintable: c.            ground]
               X1B: [                                        escape]
            X1C_5A: [renderer renderPrintable: c.            ground]
               X5B: [                                      csiEntry]
            X5C_FF: [renderer renderPrintable: c.            ground]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         enter = ( |
            | 
            renderer clearRenderer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         ground = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'ground' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator session parent states ground.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'ground' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         action: buffer To: renderer = ( |
             c.
             d.
            | 
            c: buffer get.
             match: c
            X00_06: [                                      ground]
               X07: [renderer renderBell.                  ground]
               X08: [renderer renderBackspace.             ground]
               X09: [renderer renderHorizontalTabulation.  ground]
               X0A: [renderer renderLineFeed.              ground]
               X0B: [renderer renderLineFeed.              ground]
               X0C: [renderer renderLineFeed.              ground]
               X0D: [renderer renderCarriageReturn.        ground]
            X0E_17: [                                      ground]
               X18: [                                      ground]
               X19: [                                      ground]
               X1A: [                                      ground]
               X1B: [                                      escape]
            X1C_1F: [                                      ground]
            X20_7F: [renderer renderPrintable: c.          ground]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'ground' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         dispatch: buffer To: renderer From: state = ( |
            | 
            state = self 
              ifTrue: [action: buffer To: renderer]
               False: [| newState |
                state exit.
                enter.
                newState: action: buffer To: renderer.
                newState.
                ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         enter = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         exit = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         ignore = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         undefinedSelector: sel Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
             tokens.
            | 
            tokens: (sel asTokensSeparatedByCharactersIn: ':') asVector.
            tokens first = 'match' ifFalse: [^ self].
            (tokens slice: 1 @ infinity) do: [|:token. :i. t. c| 
              t: token slice: 1 @ infinity.
              c: args first asByte.
              (t includes: '_')
                ifTrue:[| min. max |
                  min: ((t slice: 0  @ 2) hexAsIntegerIfFail: [^ self]).
                  max: ((t slice: 3  @ 5) hexAsIntegerIfFail: [^ self]).
                  (c >= min) && (c <= max) ifTrue: [^ (args at: i + 1) value]]
                False: [
                   c = (t hexAsIntegerIfFail: [^ self]) ifTrue: [^ (args at: i + 1) value]]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: history\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         trimBuffer = ( |
             t.
            | 
            t: (rawContents height - rawContentsView - maxHistory) max: 0.
            rawContents trimTop: t.
            "Cursor position can't be scrolled off top of buffer"
            cursorPosition: cursorPosition x @ ((cursorPosition y - t) max: 0).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         updateBuffer = ( |
             s.
            | 
            render: connection readIfFail: ''. 
            s: publicStatePrototype copy.
            s contents: rawContents asString.
            s cursorPosition: cursorPosition.
            publicState: s.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: public state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (terminalEmulator session publicStatePrototype)'
        
         publicState <- bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'publicStatePrototype' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (terminalEmulator buffer)'
        
         rawContents <- bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'buffer' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (0)'
        
         rawContentsView <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: ((0)@(0))'
        
         rawCursorPosition <- (0)@(0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (false)'
        
         renderIgnoreFlagged <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'\')'
        
         renderIntermediateChars <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (sequence copyRemoveAll)'
        
         renderParams <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (terminalEmulator session states ground)'
        
         renderState <- bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> 'parent' -> 'states' -> 'ground' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (nil)'
        
         updateLoop.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         asDaemon: s = ( |
            | 'daemon -f ', s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         close = ( |
            | 
            rawSocket closeIfFail: false. rawPort: 0. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copy = ( |
            | 
            (clone rawPort: 0) rawSocket: os_file deadCopy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         escape: s = ( |
            | s copy replace: '\'' With: '\\\'').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'terminalEmulator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         openOnShell: preferredShell = ( |
            | 
            run: asDaemon: socatOnShell: preferredShell.
            "Time for socat to start listening"
            process this sleep: 100.
            openSocketIfFail: [process this sleep: 1000. openSocketIfFail: [|:e| error: e]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         openSocketIfFail: blk = ( |
            | 
            rawSocket: os_file openTCPHost: '127.0.0.1' Port: port asString IfFail: [|:e| ^ blk value: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         port = ( |
            | 
            rawPort = 0 ifTrue: [rawPort: randomPort]. rawPort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         randomPort = ( |
            | 
            random integerBetween: 10000 And: 40000).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (0)'
        
         rawPort <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (os_file deadCopy)'
        
         rawSocket <- os_file deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         readIfFail: blk = ( |
            | 
            rawSocket readMin: 0 Max: 1024 IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         run: s = ( |
            | 
            os command: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         runBackground: s = ( |
            | os command: s,  ' &'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         socatOnShell: preferredShell = ( |
            | 'socat TCP4-LISTEN:', port asString, ' EXEC:"', preferredShell, '",pty,stderr,setsid,setpgid,sigint,sane,ctty').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'shellConnection' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         write: s IfFail: blk = ( |
            | 
            rawSocket write: s IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         terminalMorph = bootstrap define: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals frameMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator terminalMorph.

CopyDowns:
globals frameMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator terminalMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         animatedDelete = ( |
            | disconnect. resend.animatedDelete).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         buildMenuBar = ( |
             m.
            | 
            m: rowMorph copyTransparent.
            m addMorphLast: labelMorph copy label: 'Insert: '.
            m addMorphLast: transparentSpacerMorph copyH: 4.
            m addMorphLast: insertButtonLabel: 'ESC' Key: 'Escape'.
            m addMorphLast: transparentSpacerMorph copyH: 4.
            m addMorphLast: insertButtonLabel: '^C' Key: 'ETX'.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton: ( (ui2Button copy scriptBlock: [event sourceHand attach: terminalEmulator terminalMorph copy]) 
                                                 label: 'New Unix Terminal' )
                ToGroup: 'top').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copy = ( |
            | 
            copyOnShell: terminalEmulator preferences preferredShellInvocation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copyOnShell: preferredShell = ( |
             cm.
             m.
             rm.
            | 
            m: resend.copy.
            m borderWidth: 3.
            m color: paint named: 'outlinerGray'.
            cm: columnMorph copy color: paint named: 'transparent'.
            cm addMorphLast: terminalEmulator morphLabel copyOn: m.
            m textPane: terminalEmulator tmuxEditorMorph copyOnNewSessionForShell: preferredShell.

            rm: frameMorph copy.
            rm color: paint named: 'outlinerGray'.
            rm frameStyle: rm insetBezelStyle.
            rm borderWidth: 3.
            rm addMorphLast: m buildMenuBar.
            rm addMorphLast: m textPane.

            cm addMorphLast: rm.
            cm borderWidth: 0.
            cm beShrinkWrapVertically.
            cm beFlexibleHorizontally.
            m addMorph: cm.
            m beShrinkWrap.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         disconnect = ( |
            | textPane disconnect. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         insertButtonLabel: l Key: k = ( |
             b.
            | 
            b: ui2Button copy label: l.
            b target: self.
            b script: 'target textPane tmuxSession insert', k.
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         justDroppedInto: w Event: evt = ( |
            | 
            isInWorld ifTrue: [ textPane connect ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         morphTypeName = 'terminalEmulator terminalMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'frameMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | terminalEmulator terminalMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'terminalMorph' -> () From: ( | {
         'Category: terminalMorph State\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (nil)'
        
         textPane.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         tmuxEditorMorph = bootstrap define: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             bootstrap remove: 'text' From:
             bootstrap remove: 'text:' From:
             globals uglyTextEditorMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator tmuxEditorMorph.

CopyDowns:
globals uglyTextEditorMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype text text:.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (false)'
        
         isConnected <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator tmuxEditorMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         connect = ( |
            | 
            isConnected ifFalse: [
              startGettingStepped.
              isConnected: true]. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         copyOnNewSessionForShell: preferredShell = ( |
             n.
             s.
            | 
            s: terminalEmulator session copyConnectedOnShell: preferredShell.
            n: copyString: s publicState contents 
                    Style: (| color = paint named: 'white'. fontName = 'courier'. fontSize = 10 | ).
            n tmuxSession: s.
            n resizeToText.
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         disconnect = ( |
            | 
            isInWorld ifTrue: [stopGettingStepped]. 
            tmuxSession disconnect.
            isConnected: false. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'Comment: Called from copyString:Style:\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeString: string Panel: panel Style: style = ( |
             row.
            | 
            borderWidth: 2.
            frameStyle: insetBezelStyle.
            beRigid.

            text: terminalEmulator tmuxTextField copy.
            text  beFlexible.
            text  setText: string.
            row: rowMorph copy.
            row  borderWidth: 0.
            panel ifNotNil: [row  addMorphLast: panel].
            row  addMorphLast: text.
            addMorphLast: row.
            resizeToText. 
            color: style color.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'tmuxEditorMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'uglyTextEditorMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         step = ( |
             s.
            | 
            s: tmuxSession publicState.
            tmuxContents: s contents.
            tmuxCursorPosition: s cursorPosition.
            tmuxContents = tmuxContentsOld 
              ifFalse: [tmuxContentsOld: tmuxContents. 
                        text setText: tmuxContents.
                        changed]. 
            tmuxCursorPosition = tmuxCursorPositionOld
              ifFalse: [tmuxCursorPositionOld: tmuxCursorPosition.
                        text moveInsertionPointTo: tmuxCursorPosition.
                        changed].
            tmuxSession setViewHeight: text linesInView.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | terminalEmulator tmuxEditorMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (nil)'
        
         text.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'\')'
        
         tmuxContents <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (\'\')'
        
         tmuxContentsOld <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (0 @ 0)'
        
         tmuxCursorPosition <- 0 @ 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: ((0)@(0))'
        
         tmuxCursorPositionOld <- (0)@(0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: terminalEmulator InitialContents: InitializeToExpression: (terminalEmulator session)'
        
         tmuxSession <- bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'session' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         tmuxTextField = bootstrap define: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals ui2_textField copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator tmuxTextField.

CopyDowns:
globals ui2_textField. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals terminalEmulator tmuxTextField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         backspace = ( |
            | 
            tmuxSession insertBackspace. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         backward_char = ( |
            | 
            tmuxSession insertLeftArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'Comment: This is sent for escape key - override\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         cancelTextChanges: evt = ( |
            | 
            tmuxSession insertEscape. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         forward_char = ( |
            | tmuxSession insertRightArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         insert_char: char = ( |
            | 
            tmuxSession insertPrintableChar: char.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         keyDown: e = ( |
            | 
            owner owner isConnected 
               ifTrue: [resend.keyDown: e]
                False: [dropThroughMarker ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'tmuxTextField'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         next_line = ( |
            | 
            tmuxSession insertDownArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui2_textField' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         previous_line = ( |
            | 
            tmuxSession insertUpArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         refreshContents = ( |
            | 
            setText: tmuxSession publicState contents. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         split_line = ( |
            | 
            tmuxSession insertEnter. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         tab = ( |
            | tmuxSession insertTab. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: terminalEmulator InitialContents: FollowSlot'
        
         tmuxSession = ( |
            | owner owner tmuxSession).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'terminalEmulator' -> 'tmuxTextField' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: terminalEmulator InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | terminalEmulator tmuxTextField).
        } | ) 



 '-- Side effects'

 globals modules terminalEmulator postFileIn
