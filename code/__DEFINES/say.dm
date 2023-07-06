/*
	Defines for use in saycode and text formatting.
	Currently contains speech spans and message modes
*/
#define RADIO_EXTENSION "department specific"
#define RADIO_KEY "department specific key"
#define LANGUAGE_EXTENSION "language specific"

//Message modes. Each one defines a radio channel, more or less.
//if you use ! as a mode key for some ungodly reason, change the first character for ion_num() so get_message_mode() doesn't freak out with state law prompts - shiz.
#define MODE_HEADSET "headset"
#define MODE_ROBOT "robot"

#define MODE_R_HAND "right hand"
#define MODE_KEY_R_HAND "r"

#define MODE_L_HAND "left hand"
#define MODE_KEY_L_HAND "l"

#define MODE_INTERCOM "intercom"
#define MODE_KEY_INTERCOM "i"
#define MODE_TOKEN_INTERCOM ":i"

#define MODE_BINARY "binary"
#define MODE_KEY_BINARY "b"
#define MODE_TOKEN_BINARY ":b"

#define WHISPER_MODE "the type of whisper"
#define MODE_WHISPER "whisper"
#define MODE_WHISPER_CRIT "whispercrit"

#define MODE_DEPARTMENT "department"
#define MODE_KEY_DEPARTMENT "h"
#define MODE_TOKEN_DEPARTMENT ":h"

#define MODE_ADMIN "admin"
#define MODE_KEY_ADMIN "p"

#define MODE_DEADMIN "deadmin"
#define MODE_KEY_DEADMIN "d"

#define MODE_PUPPET "puppet"
#define MODE_KEY_PUPPET "j"

#define MODE_ALIEN "alientalk"
#define MODE_HOLOPAD "holopad"

#define MODE_CHANGELING "changeling"
#define MODE_KEY_CHANGELING "g"
#define MODE_TOKEN_CHANGELING ":g"

#define MODE_VOCALCORDS "cords"
#define MODE_KEY_VOCALCORDS "x"

#define MODE_MAFIA "mafia"

#define MODE_SING "sing"

#define MODE_CUSTOM_SAY_EMOTE "custom_say"

#define MODE_CUSTOM_SAY_ERASE_INPUT "erase_input"

//Spans. Robot speech, italics, etc. Applied in compose_message().
#define SPAN_ROBOT "robot"
#define SPAN_YELL "yell"
#define SPAN_ITALICS "italics"
#define SPAN_SANS "sans"
#define SPAN_PAPYRUS "papyrus"
#define SPAN_REALLYBIG "reallybig"
#define SPAN_COMMAND "command_headset"
#define SPAN_CLOWN "clown"
#define SPAN_SINGING "singing"
#define SPAN_TAPE_RECORDER "tape_recorder"
#define SPAN_HELIUM "small"

//bitflag #defines for return value of the radio() proc.
#define ITALICS (1<<0)
#define REDUCE_RANGE (1<<1)
#define NOPASS (1<<2)

//Eavesdropping
#define EAVESDROP_EXTRA_RANGE 1 //how much past the specified message_range does the message get starred, whispering only

/// How close intercoms can be for radio code use
#define MODE_RANGE_INTERCOM 1

// A link given to ghost alice to follow bob
#define FOLLOW_LINK(alice, bob) "<a href=?src=[REF(alice)];follow=[REF(bob)]>(F)</a>"
#define TURF_LINK(alice, turfy) "<a href=?src=[REF(alice)];x=[turfy.x];y=[turfy.y];z=[turfy.z]>(T)</a>"
#define FOLLOW_OR_TURF_LINK(alice, bob, turfy) "<a href=?src=[REF(alice)];follow=[REF(bob)];x=[turfy.x];y=[turfy.y];z=[turfy.z]>(F)</a>"

//Don't set this very much higher then 1024 unless you like inviting people in to dos your server with message spam
#define MAX_MESSAGE_LEN 1024
#define MAX_NAME_LEN 42
#define MAX_BROADCAST_LEN 512
#define MAX_CHARTER_LEN 80
#define MAX_PLAQUE_LEN 144

// Audio/Visual Flags. Used to determine what sense are required to notice a message.
#define MSG_VISUAL (1<<0)
#define MSG_AUDIBLE (1<<1)



//Used in visible_message_flags, audible_message_flags and runechat_flags
#define EMOTE_MESSAGE (1<<0)


// RedEdit
//Bark defines
#define BARK_DEFAULT_MINPITCH 0.6
#define BARK_DEFAULT_MAXPITCH 1.4
#define BARK_DEFAULT_MINVARY 0.1
#define BARK_DEFAULT_MAXVARY 0.4
#define BARK_DEFAULT_MINSPEED 2
#define BARK_DEFAULT_MAXSPEED 8

#define BARK_SPEED_BASELINE 4 //Used to calculate delay between barks, any bark speeds below this feature higher bark density, any speeds above feature lower bark density. Keeps barking length consistent

#define BARK_MAX_BARKS 128
#define BARK_MAX_TIME (10 SECONDS) // More or less the amount of time the above takes to process through with a bark speed of 2.

#define BARK_PITCH_RAND(gend) ((gend == MALE ? rand(60, 120) : (gend == FEMALE ? rand(80, 140) : rand(60,140))) / 100) //Macro for determining random pitch based off gender
#define BARK_VARIANCE_RAND (rand(BARK_DEFAULT_MINVARY * 100, BARK_DEFAULT_MAXVARY * 100) / 100) //Macro for randomizing bark variance to reduce the amount of copy-pasta necessary for that
#define BARK_SOUND_FALLOFF_EXPONENT(distance) (distance/7) //At lower ranges, we want the exponent to be below 1 so that whispers don't sound too awkward. At higher ranges, we want the exponent fairly high to make yelling less obnoxious
#define BARK_DO_VARY(pitch, variance) (rand(((pitch * 100) - (variance*50)), ((pitch*100) + (variance*50))) / 100)
