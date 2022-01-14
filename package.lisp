#|
 This file is a part of lichat
 (c) 2016 Shirakumo http://tymoon.eu (shinmera@tymoon.eu)
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:cl-user)
(defpackage #:lichat-protocol
  (:nicknames #:org.shirakumo.lichat.protocol)
  (:local-nicknames
   (#:pln #:trivial-package-local-nicknames))
  (:use #:cl)
  (:shadow #:search #:block)
  ;; conditions.lisp
  (:export
   #:protocol-condition
   #:wire-condition
   #:printer-condition
   #:unprintable-object
   #:object
   #:null-in-symbol-designator
   #:symbol-designator
   #:reader-condition
   #:stray-null-found
   #:incomplete-token
   #:unknown-symbol
   #:symbol-designator
   #:read-limit-hit
   #:missing-update-argument
   #:update
   #:missing-id
   #:missing-clock
   #:unknown-wire-object
   #:malformed-wire-object
   #:incompatible-value-type-for-slot)
  ;; printer.lisp
  (:export
   #:print-sexpr)
  ;; protocol.lisp
  (:export
   #:*default-profile-lifetime*
   #:*default-channel-lifetime*
   #:*id-counter*
   #:*default-regular-channel-permissions*
   #:*default-anonymous-channel-permissions*
   #:*default-primary-channel-permissions*
   #:wireable
   #:username-p
   #:username
   #:channelname-p
   #:channelname
   #:password-p
   #:password
   #:id-p
   #:id
   #:next-id
   #:protocol-version
   #:define-protocol-class
   #:server-object
   #:named-object
   #:name
   #:profile
   #:lifetime
   #:user
   #:connections
   #:channels
   #:connection
   #:user
   #:channel
   #:permissions
   #:grant
   #:update
   #:deny
   #:lifetime
   #:users
   #:wire-object
   #:ping
   #:pong
   #:update
   #:id
   #:clock
   #:from
   #:connect
   #:password
   #:version
   #:extensions
   #:disconnect
   #:register
   #:channel-update
   #:channel
   #:target-update
   #:target
   #:text-update
   #:text
   #:join
   #:leave
   #:create
   #:kick
   #:pull
   #:permissions
   #:message
   #:users
   #:users
   #:channels
   #:channels
   #:user-info
   #:registered
   #:connections
   #:capabilities
   #:permitted
   #:server-info
   #:attributes
   #:backfill
   #:data
   #:content-type
   #:filename
   #:payload
   #:emotes
   #:names
   #:emote
   #:content-type
   #:name
   #:payload
   #:edit
   #:channel-info
   #:keys
   #:set-channel-info
   #:key
   #:kill
   #:destroy
   #:ban
   #:unban
   #:ip-ban
   #:ip-unban
   #:pause
   #:by
   #:quiet
   #:unquiet
   #:failure
   #:malformed-update
   #:update-too-long
   #:connection-unstable
   #:too-many-connections
   #:update-failure
   #:update-id
   #:invalid-update
   #:already-connected
   #:username-mismatch
   #:incompatible-version
   #:invalid-password
   #:no-such-profile
   #:username-taken
   #:no-such-channel
   #:registration-rejected
   #:already-in-channel
   #:not-in-channel
   #:channelname-taken
   #:bad-name
   #:too-many-channels
   #:insufficient-permissions
   #:invalid-permissions
   #:no-such-user
   #:too-many-updates
   #:bad-content-type
   #:allowed-content-types
   #:no-such-parent-channel
   #:no-such-channel-info
   #:malformed-channel-info
   #:clock-skewed
   #:bad-ip-format)
  ;; reader.lisp
  (:export
   #:whitespace-p
   #:skip-to-null
   #:read-sexpr)
  ;; typed-slot-class.lisp
  (:export)
  ;; wire.lisp
  (:export
   #:to-wire
   #:check-update-options
   #:from-wire
   #:from-wire*))

(defpackage #:org.shirakumo.lichat.protocol.packages
  (:use)
  (:local-nicknames
   (#:lichat #:org.shirakumo.lichat.protocol)
   ;; KLUDGE: Servers and clients currently alias these two packages.
   (#:shirakumo #:org.shirakumo.lichat.protocol)))
