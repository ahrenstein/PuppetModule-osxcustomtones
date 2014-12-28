# ----------------------------------------------------------------------
# <copyright file="init.pp" company="Ahrenstein">
#     Copyright (c) 2014 Ahrenstein., All Rights Reserved.
#     Authors:
#          Matthew Ahrenstein 2014 @ahrenstein
# </copyright>
# --------------------------------------------------------------------
class osxcustomtones {

  #Edit the property list responsible for managing the ringtones.
  #THIS OVERWRITES AN ENTIRE ARRAY SO ANY NEW APPLE TONES SINCE THIS ARRAY WAS LAST UPDATED ARE LOST
  property_list_key { 'Plist-Custom_Tones':
    ensure     => present,
    path       => '/System/Library/PrivateFrameworks/ToneKit.framework/Versions/A/Resources/TKRingtones.plist',
    key        => 'modern',
    value      => [ '<default>', 'system:Apex', 'system:Beacon', 'system:Bulletin', 'system:By The Seaside', 'system:Chimes', 'system:Circuit', 'system:Constellation', 'system:Cosmic', 'system:Crystals', 'system:Hillside', 'system:Illuminate', 'system:Night Owl', 'system:Playtime', 'system:Presto', 'system:Radar', 'system:Radiate', 'system:Ripples', 'system:Sencha', 'system:Signal', 'system:Silk', 'system:Slow Rise', 'system:Stargaze', 'system:Summit', 'system:Twinkle', 'system:Uplift', 'system:Waves', 'system:Echelon Text', 'system:Banjo-Kazooie Extra Life', 'system:Audrey New Text', 'system:Dalek Exterminate', 'system:FF7 Fanfare', 'system:Navi Hey Listen', 'system:YEEEEAAAAH' ],
    value_type => 'array',
  }

  #Add the ringtone files to the proper location from the module's files directory
  file { 'Tone-Audrey_New_Text':
    ensure => file,
    path   => "/System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/Audrey New Text.m4r",
    owner  => 'root',
    group  => 'wheel',
    mode   => 644,
    source => 'puppet:///modules/osxcustomtones/audrey_new_text.m4r',
  }
  file { 'Tone-Banjo-Kazooie_Extra_Life':
    ensure => file,
    path   => "/System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/Banjo-Kazooie Extra Life.m4r",
    owner  => 'root',
    group  => 'wheel',
    mode   => 644,
    source => 'puppet:///modules/osxcustomtones/banjo-kazooie_extra_life.m4r',
  }
  file { 'Tone-Dalek_Exterminate':
    ensure => file,
    path   => "/System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/Dalek Exterminate.m4r",
    owner  => 'root',
    group  => 'wheel',
    mode   => 644,
    source => 'puppet:///modules/osxcustomtones/dalek_exterminate.m4r',
  }
  file { 'Tone-Echelon_Text':
    ensure => file,
    path   => "/System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/Echelon Text.m4r",
    owner  => 'root',
    group  => 'wheel',
    mode   => 644,
    source => 'puppet:///modules/osxcustomtones/echelon_text.m4r',
  }
  file { 'Tone-Ff7_Fanfare':
    ensure => file,
    path   => "/System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/FF7 Fanfare.m4r",
    owner  => 'root',
    group  => 'wheel',
    mode   => 644,
    source => 'puppet:///modules/osxcustomtones/ff7_fanfare.m4r',
  }
  file { 'Tone-Navi_Hey_Listen':
    ensure => file,
    path   => "/System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/Navi Hey Listen.m4r",
    owner  => 'root',
    group  => 'wheel',
    mode   => 644,
    source => 'puppet:///modules/osxcustomtones/navi_hey_listen.m4r',
  }
  file { 'Tone-Yeeeeaaaah':
    ensure => file,
    path   => "/System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/Resources/Ringtones/YEEEEAAAAH.m4r",
    owner  => 'root',
    group  => 'wheel',
    mode   => 644,
    source => 'puppet:///modules/osxcustomtones/yeeeeaaaah.m4r',
  }
}
