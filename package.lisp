#|
 This file is a part of lichat
 (c) 2016 Shirakumo http://tymoon.eu (shinmera@tymoon.eu)
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:cl-user)
(defpackage #:lichat-protocol
  (:nicknames #:org.shirakumo.lichat.protocol)
  (:use #:cl)
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
   #:password
   #:lifetime
   #:user
   #:connections
   #:channels
   #:connection
   #:user
   #:channel
   #:permissions
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
   #:backfill
   #:data
   #:content-type
   #:filename
   #:payload
   #:emotes
   #:names
   #:failure
   #:malformed-update
   #:update-too-long
   #:connection-unstable
   #:too-many-connections
   #:update-failure
   #:update-id
   #:invalid-update
   #:username-mismatch
   #:incompatible-version
   #:invalid-password
   #:no-such-profile
   #:username-taken
   #:no-such-channel
   #:already-in-channel
   #:not-in-channel
   #:channelname-taken
   #:bad-name
   #:insufficient-permissions
   #:invalid-permissions
   #:no-such-user
   #:too-many-updates
   #:bad-content-type
   #:allowed-content-types)
  ;; reader.lisp
  (:export
   #:whitespace-p
   #:read-sexpr)
  ;; typed-slot-class.lisp
  (:export)
  ;; wire.lisp
  (:export
   #:to-wire
   #:check-update-options
   #:from-wire))
