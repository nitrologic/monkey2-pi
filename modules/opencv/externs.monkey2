Namespace opencv

#Import "<std>"

#Import "include/*.h"
#Import "*.h"

#import "cvdevice.cpp"

#If __HOSTOS__="windows"

#Endif

#If __HOSTOS__="macos"

#Import "lib/mac/libopencv_core.dylib"
#Import "lib/mac/libopencv_imgcodecs.dylib" 
#Import "lib/mac/libopencv_imgproc.dylib" 
#Import "lib/mac/libopencv_highgui.dylib"
#Import "lib/mac/libopencv_video.dylib"
#Import "lib/mac/libopencv_videoio.dylib"

#Endif

#If __HOSTOS__="linux"

#Endif

#If __HOSTOS__="pi"

#Import "<libasound.a>"
#Import "<libpthread.a>"
#import "pm_linux/finddefault.c"
#import "pm_linux/pmlinux.c"
#import "pm_linux/pmlinuxalsa.c"
#import "porttime/ptlinux.c"

#Endif

#Import "cvdevice.h"

Extern

Class CVDevice Extends Void 
	global CaptureCount:Int
	global Version:Int	
	Function OpenCapture:CVDevice Ptr(index:Int)
End

#rem
	Field error:Int
	Field errorText:Byte Ptr
	Method Sleep(duration:Double)
	Method GetInfo(index:Int)	

	Method OpenOutput:Handle(index:Int)
	Method OutputMessage(index:Int,data:Int)
	Method OutputMessages(index:Int,bytes:Int Ptr,length:Int)
	Method CloseOutput(handle:Handle)

	Method OpenInput:Handle(index:Int)
	Method HasInput:Bool(handle:Handle)
	Method MidiEventData:Int()
	Method MidiEventMessage:int(buffer:Void Ptr,length:int)
	Method MidiEventTimestamp:Double()	
	Method CloseInput(handle:Handle)
#end

