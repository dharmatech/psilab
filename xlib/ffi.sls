;; -*-scheme-*-

;; Ed Cavazos wayo.cavazos@gmail.com

(library

 (psilab xlib ffi)

 (export
  ;; structs
  make-XExtCodes
  XExtCodes-extension
  XExtCodes-major_opcode
  XExtCodes-first_event
  XExtCodes-first_error
  XExtCodes-extension-set!
  XExtCodes-major_opcode-set!
  XExtCodes-first_event-set!
  XExtCodes-first_error-set!
  make-XPixmapFormatValues
  XPixmapFormatValues-depth
  XPixmapFormatValues-bits_per_pixel
  XPixmapFormatValues-scanline_pad
  XPixmapFormatValues-depth-set!
  XPixmapFormatValues-bits_per_pixel-set!
  XPixmapFormatValues-scanline_pad-set!
  make-XGCValues
  XGCValues-function
  XGCValues-plane_mask
  XGCValues-foreground
  XGCValues-background
  XGCValues-line_width
  XGCValues-line_style
  XGCValues-cap_style
  XGCValues-join_style
  XGCValues-fill_style
  XGCValues-fill_rule
  XGCValues-arc_mode
  XGCValues-tile
  XGCValues-stipple
  XGCValues-ts_x_origin
  XGCValues-ts_y_origin
  XGCValues-font
  XGCValues-subwindow_mode
  XGCValues-graphics_exposures
  XGCValues-clip_x_origin
  XGCValues-clip_y_origin
  XGCValues-clip_mask
  XGCValues-dash_offset
  XGCValues-dashes
  XGCValues-function-set!
  XGCValues-plane_mask-set!
  XGCValues-foreground-set!
  XGCValues-background-set!
  XGCValues-line_width-set!
  XGCValues-line_style-set!
  XGCValues-cap_style-set!
  XGCValues-join_style-set!
  XGCValues-fill_style-set!
  XGCValues-fill_rule-set!
  XGCValues-arc_mode-set!
  XGCValues-tile-set!
  XGCValues-stipple-set!
  XGCValues-ts_x_origin-set!
  XGCValues-ts_y_origin-set!
  XGCValues-font-set!
  XGCValues-subwindow_mode-set!
  XGCValues-graphics_exposures-set!
  XGCValues-clip_x_origin-set!
  XGCValues-clip_y_origin-set!
  XGCValues-clip_mask-set!
  XGCValues-dash_offset-set!
  XGCValues-dashes-set!
  make-Visual
  Visual-ext_data
  Visual-visualid
  Visual-class
  Visual-red_mask
  Visual-green_mask
  Visual-blue_mask
  Visual-bits_per_rgb
  Visual-map_entries
  Visual-ext_data-set!
  Visual-visualid-set!
  Visual-class-set!
  Visual-red_mask-set!
  Visual-green_mask-set!
  Visual-blue_mask-set!
  Visual-bits_per_rgb-set!
  Visual-map_entries-set!
  make-Depth
  Depth-depth
  Depth-nvisuals
  Depth-visuals
  Depth-depth-set!
  Depth-nvisuals-set!
  Depth-visuals-set!
  make-Screen
  Screen-ext_data
  Screen-display
  Screen-root
  Screen-width
  Screen-height
  Screen-mwidth
  Screen-mheight
  Screen-ndepths
  Screen-depths
  Screen-root_depth
  Screen-root_visual
  Screen-default_gc
  Screen-cmap
  Screen-white_pixel
  Screen-black_pixel
  Screen-max_maps
  Screen-min_maps
  Screen-backing_store
  Screen-save_unders
  Screen-root_input_mask
  Screen-ext_data-set!
  Screen-display-set!
  Screen-root-set!
  Screen-width-set!
  Screen-height-set!
  Screen-mwidth-set!
  Screen-mheight-set!
  Screen-ndepths-set!
  Screen-depths-set!
  Screen-root_depth-set!
  Screen-root_visual-set!
  Screen-default_gc-set!
  Screen-cmap-set!
  Screen-white_pixel-set!
  Screen-black_pixel-set!
  Screen-max_maps-set!
  Screen-min_maps-set!
  Screen-backing_store-set!
  Screen-save_unders-set!
  Screen-root_input_mask-set!
  make-ScreenFormat
  ScreenFormat-ext_data
  ScreenFormat-depth
  ScreenFormat-bits_per_pixel
  ScreenFormat-scanline_pad
  ScreenFormat-ext_data-set!
  ScreenFormat-depth-set!
  ScreenFormat-bits_per_pixel-set!
  ScreenFormat-scanline_pad-set!
  make-XSetWindowAttributes
  XSetWindowAttributes-background_pixmap
  XSetWindowAttributes-background_pixel
  XSetWindowAttributes-border_pixmap
  XSetWindowAttributes-border_pixel
  XSetWindowAttributes-bit_gravity
  XSetWindowAttributes-win_gravity
  XSetWindowAttributes-backing_store
  XSetWindowAttributes-backing_planes
  XSetWindowAttributes-backing_pixel
  XSetWindowAttributes-save_under
  XSetWindowAttributes-event_mask
  XSetWindowAttributes-do_not_propagate_mask
  XSetWindowAttributes-override_redirect
  XSetWindowAttributes-colormap
  XSetWindowAttributes-cursor
  XSetWindowAttributes-background_pixmap-set!
  XSetWindowAttributes-background_pixel-set!
  XSetWindowAttributes-border_pixmap-set!
  XSetWindowAttributes-border_pixel-set!
  XSetWindowAttributes-bit_gravity-set!
  XSetWindowAttributes-win_gravity-set!
  XSetWindowAttributes-backing_store-set!
  XSetWindowAttributes-backing_planes-set!
  XSetWindowAttributes-backing_pixel-set!
  XSetWindowAttributes-save_under-set!
  XSetWindowAttributes-event_mask-set!
  XSetWindowAttributes-do_not_propagate_mask-set!
  XSetWindowAttributes-override_redirect-set!
  XSetWindowAttributes-colormap-set!
  XSetWindowAttributes-cursor-set!
  make-XWindowAttributes
  XWindowAttributes-x
  XWindowAttributes-y
  XWindowAttributes-width
  XWindowAttributes-height
  XWindowAttributes-border_width
  XWindowAttributes-depth
  XWindowAttributes-visual
  XWindowAttributes-root
  XWindowAttributes-class
  XWindowAttributes-bit_gravity
  XWindowAttributes-win_gravity
  XWindowAttributes-backing_store
  XWindowAttributes-backing_planes
  XWindowAttributes-backing_pixel
  XWindowAttributes-save_under
  XWindowAttributes-colormap
  XWindowAttributes-map_installed
  XWindowAttributes-map_state
  XWindowAttributes-all_event_masks
  XWindowAttributes-your_event_mask
  XWindowAttributes-do_not_propagate_mask
  XWindowAttributes-override_redirect
  XWindowAttributes-screen
  XWindowAttributes-x-set!
  XWindowAttributes-y-set!
  XWindowAttributes-width-set!
  XWindowAttributes-height-set!
  XWindowAttributes-border_width-set!
  XWindowAttributes-depth-set!
  XWindowAttributes-visual-set!
  XWindowAttributes-root-set!
  XWindowAttributes-class-set!
  XWindowAttributes-bit_gravity-set!
  XWindowAttributes-win_gravity-set!
  XWindowAttributes-backing_store-set!
  XWindowAttributes-backing_planes-set!
  XWindowAttributes-backing_pixel-set!
  XWindowAttributes-save_under-set!
  XWindowAttributes-colormap-set!
  XWindowAttributes-map_installed-set!
  XWindowAttributes-map_state-set!
  XWindowAttributes-all_event_masks-set!
  XWindowAttributes-your_event_mask-set!
  XWindowAttributes-do_not_propagate_mask-set!
  XWindowAttributes-override_redirect-set!
  XWindowAttributes-screen-set!
  make-XHostAddress
  XHostAddress-family
  XHostAddress-length
  XHostAddress-address
  XHostAddress-family-set!
  XHostAddress-length-set!
  XHostAddress-address-set!
  make-XServerInterpretedAddress
  XServerInterpretedAddress-typelength
  XServerInterpretedAddress-valuelength
  XServerInterpretedAddress-type
  XServerInterpretedAddress-value
  XServerInterpretedAddress-typelength-set!
  XServerInterpretedAddress-valuelength-set!
  XServerInterpretedAddress-type-set!
  XServerInterpretedAddress-value-set!
  make-XWindowChanges
  XWindowChanges-x
  XWindowChanges-y
  XWindowChanges-width
  XWindowChanges-height
  XWindowChanges-border_width
  XWindowChanges-sibling
  XWindowChanges-stack_mode
  XWindowChanges-x-set!
  XWindowChanges-y-set!
  XWindowChanges-width-set!
  XWindowChanges-height-set!
  XWindowChanges-border_width-set!
  XWindowChanges-sibling-set!
  XWindowChanges-stack_mode-set!
  make-XColor
  XColor-pixel
  XColor-red
  XColor-green
  XColor-blue
  XColor-flags
  XColor-pad
  XColor-pixel-set!
  XColor-red-set!
  XColor-green-set!
  XColor-blue-set!
  XColor-flags-set!
  XColor-pad-set!
  make-XSegment
  XSegment-x1
  XSegment-y1
  XSegment-x2
  XSegment-y2
  XSegment-x1-set!
  XSegment-y1-set!
  XSegment-x2-set!
  XSegment-y2-set!
  make-XPoint
  XPoint-x
  XPoint-y
  XPoint-x-set!
  XPoint-y-set!
  make-XRectangle
  XRectangle-x
  XRectangle-y
  XRectangle-width
  XRectangle-height
  XRectangle-x-set!
  XRectangle-y-set!
  XRectangle-width-set!
  XRectangle-height-set!
  make-XArc
  XArc-x
  XArc-y
  XArc-width
  XArc-height
  XArc-angle1
  XArc-angle2
  XArc-x-set!
  XArc-y-set!
  XArc-width-set!
  XArc-height-set!
  XArc-angle1-set!
  XArc-angle2-set!
  make-XKeyboardControl
  XKeyboardControl-key_click_percent
  XKeyboardControl-bell_percent
  XKeyboardControl-bell_pitch
  XKeyboardControl-bell_duration
  XKeyboardControl-led
  XKeyboardControl-led_mode
  XKeyboardControl-key
  XKeyboardControl-auto_repeat_mode
  XKeyboardControl-key_click_percent-set!
  XKeyboardControl-bell_percent-set!
  XKeyboardControl-bell_pitch-set!
  XKeyboardControl-bell_duration-set!
  XKeyboardControl-led-set!
  XKeyboardControl-led_mode-set!
  XKeyboardControl-key-set!
  XKeyboardControl-auto_repeat_mode-set!
  make-XTimeCoord
  XTimeCoord-time
  XTimeCoord-x
  XTimeCoord-y
  XTimeCoord-time-set!
  XTimeCoord-x-set!
  XTimeCoord-y-set!
  make-XModifierKeymap
  XModifierKeymap-max_keypermod
  XModifierKeymap-modifiermap
  XModifierKeymap-max_keypermod-set!
  XModifierKeymap-modifiermap-set!
  make-XKeyEvent
  XKeyEvent-type
  XKeyEvent-serial
  XKeyEvent-send_event
  XKeyEvent-display
  XKeyEvent-window
  XKeyEvent-root
  XKeyEvent-subwindow
  XKeyEvent-time
  XKeyEvent-x
  XKeyEvent-y
  XKeyEvent-x_root
  XKeyEvent-y_root
  XKeyEvent-state
  XKeyEvent-keycode
  XKeyEvent-same_screen
  XKeyEvent-type-set!
  XKeyEvent-serial-set!
  XKeyEvent-send_event-set!
  XKeyEvent-display-set!
  XKeyEvent-window-set!
  XKeyEvent-root-set!
  XKeyEvent-subwindow-set!
  XKeyEvent-time-set!
  XKeyEvent-x-set!
  XKeyEvent-y-set!
  XKeyEvent-x_root-set!
  XKeyEvent-y_root-set!
  XKeyEvent-state-set!
  XKeyEvent-keycode-set!
  XKeyEvent-same_screen-set!
  make-XButtonEvent
  XButtonEvent-type
  XButtonEvent-serial
  XButtonEvent-send_event
  XButtonEvent-display
  XButtonEvent-window
  XButtonEvent-root
  XButtonEvent-subwindow
  XButtonEvent-time
  XButtonEvent-x
  XButtonEvent-y
  XButtonEvent-x_root
  XButtonEvent-y_root
  XButtonEvent-state
  XButtonEvent-button
  XButtonEvent-same_screen
  XButtonEvent-type-set!
  XButtonEvent-serial-set!
  XButtonEvent-send_event-set!
  XButtonEvent-display-set!
  XButtonEvent-window-set!
  XButtonEvent-root-set!
  XButtonEvent-subwindow-set!
  XButtonEvent-time-set!
  XButtonEvent-x-set!
  XButtonEvent-y-set!
  XButtonEvent-x_root-set!
  XButtonEvent-y_root-set!
  XButtonEvent-state-set!
  XButtonEvent-button-set!
  XButtonEvent-same_screen-set!
  make-XMotionEvent
  XMotionEvent-type
  XMotionEvent-serial
  XMotionEvent-send_event
  XMotionEvent-display
  XMotionEvent-window
  XMotionEvent-root
  XMotionEvent-subwindow
  XMotionEvent-time
  XMotionEvent-x
  XMotionEvent-y
  XMotionEvent-x_root
  XMotionEvent-y_root
  XMotionEvent-state
  XMotionEvent-is_hint
  XMotionEvent-same_screen
  XMotionEvent-type-set!
  XMotionEvent-serial-set!
  XMotionEvent-send_event-set!
  XMotionEvent-display-set!
  XMotionEvent-window-set!
  XMotionEvent-root-set!
  XMotionEvent-subwindow-set!
  XMotionEvent-time-set!
  XMotionEvent-x-set!
  XMotionEvent-y-set!
  XMotionEvent-x_root-set!
  XMotionEvent-y_root-set!
  XMotionEvent-state-set!
  XMotionEvent-is_hint-set!
  XMotionEvent-same_screen-set!
  make-XCrossingEvent
  XCrossingEvent-type
  XCrossingEvent-serial
  XCrossingEvent-send_event
  XCrossingEvent-display
  XCrossingEvent-window
  XCrossingEvent-root
  XCrossingEvent-subwindow
  XCrossingEvent-time
  XCrossingEvent-x
  XCrossingEvent-y
  XCrossingEvent-x_root
  XCrossingEvent-y_root
  XCrossingEvent-mode
  XCrossingEvent-detail
  XCrossingEvent-same_screen
  XCrossingEvent-focus
  XCrossingEvent-state
  XCrossingEvent-type-set!
  XCrossingEvent-serial-set!
  XCrossingEvent-send_event-set!
  XCrossingEvent-display-set!
  XCrossingEvent-window-set!
  XCrossingEvent-root-set!
  XCrossingEvent-subwindow-set!
  XCrossingEvent-time-set!
  XCrossingEvent-x-set!
  XCrossingEvent-y-set!
  XCrossingEvent-x_root-set!
  XCrossingEvent-y_root-set!
  XCrossingEvent-mode-set!
  XCrossingEvent-detail-set!
  XCrossingEvent-same_screen-set!
  XCrossingEvent-focus-set!
  XCrossingEvent-state-set!
  make-XFocusChangeEvent
  XFocusChangeEvent-type
  XFocusChangeEvent-serial
  XFocusChangeEvent-send_event
  XFocusChangeEvent-display
  XFocusChangeEvent-window
  XFocusChangeEvent-mode
  XFocusChangeEvent-detail
  XFocusChangeEvent-type-set!
  XFocusChangeEvent-serial-set!
  XFocusChangeEvent-send_event-set!
  XFocusChangeEvent-display-set!
  XFocusChangeEvent-window-set!
  XFocusChangeEvent-mode-set!
  XFocusChangeEvent-detail-set!
  make-XExposeEvent
  XExposeEvent-type
  XExposeEvent-serial
  XExposeEvent-send_event
  XExposeEvent-display
  XExposeEvent-window
  XExposeEvent-x
  XExposeEvent-y
  XExposeEvent-width
  XExposeEvent-height
  XExposeEvent-count
  XExposeEvent-type-set!
  XExposeEvent-serial-set!
  XExposeEvent-send_event-set!
  XExposeEvent-display-set!
  XExposeEvent-window-set!
  XExposeEvent-x-set!
  XExposeEvent-y-set!
  XExposeEvent-width-set!
  XExposeEvent-height-set!
  XExposeEvent-count-set!
  make-XGraphicsExposeEvent
  XGraphicsExposeEvent-type
  XGraphicsExposeEvent-serial
  XGraphicsExposeEvent-send_event
  XGraphicsExposeEvent-display
  XGraphicsExposeEvent-drawable
  XGraphicsExposeEvent-x
  XGraphicsExposeEvent-y
  XGraphicsExposeEvent-width
  XGraphicsExposeEvent-height
  XGraphicsExposeEvent-count
  XGraphicsExposeEvent-major_code
  XGraphicsExposeEvent-minor_code
  XGraphicsExposeEvent-type-set!
  XGraphicsExposeEvent-serial-set!
  XGraphicsExposeEvent-send_event-set!
  XGraphicsExposeEvent-display-set!
  XGraphicsExposeEvent-drawable-set!
  XGraphicsExposeEvent-x-set!
  XGraphicsExposeEvent-y-set!
  XGraphicsExposeEvent-width-set!
  XGraphicsExposeEvent-height-set!
  XGraphicsExposeEvent-count-set!
  XGraphicsExposeEvent-major_code-set!
  XGraphicsExposeEvent-minor_code-set!
  make-XNoExposeEvent
  XNoExposeEvent-type
  XNoExposeEvent-serial
  XNoExposeEvent-send_event
  XNoExposeEvent-display
  XNoExposeEvent-drawable
  XNoExposeEvent-major_code
  XNoExposeEvent-minor_code
  XNoExposeEvent-type-set!
  XNoExposeEvent-serial-set!
  XNoExposeEvent-send_event-set!
  XNoExposeEvent-display-set!
  XNoExposeEvent-drawable-set!
  XNoExposeEvent-major_code-set!
  XNoExposeEvent-minor_code-set!
  make-XVisibilityEvent
  XVisibilityEvent-type
  XVisibilityEvent-serial
  XVisibilityEvent-send_event
  XVisibilityEvent-display
  XVisibilityEvent-window
  XVisibilityEvent-state
  XVisibilityEvent-type-set!
  XVisibilityEvent-serial-set!
  XVisibilityEvent-send_event-set!
  XVisibilityEvent-display-set!
  XVisibilityEvent-window-set!
  XVisibilityEvent-state-set!
  make-XCreateWindowEvent
  XCreateWindowEvent-type
  XCreateWindowEvent-serial
  XCreateWindowEvent-send_event
  XCreateWindowEvent-display
  XCreateWindowEvent-parent
  XCreateWindowEvent-window
  XCreateWindowEvent-x
  XCreateWindowEvent-y
  XCreateWindowEvent-width
  XCreateWindowEvent-height
  XCreateWindowEvent-border_width
  XCreateWindowEvent-override_redirect
  XCreateWindowEvent-type-set!
  XCreateWindowEvent-serial-set!
  XCreateWindowEvent-send_event-set!
  XCreateWindowEvent-display-set!
  XCreateWindowEvent-parent-set!
  XCreateWindowEvent-window-set!
  XCreateWindowEvent-x-set!
  XCreateWindowEvent-y-set!
  XCreateWindowEvent-width-set!
  XCreateWindowEvent-height-set!
  XCreateWindowEvent-border_width-set!
  XCreateWindowEvent-override_redirect-set!
  make-XDestroyWindowEvent
  XDestroyWindowEvent-type
  XDestroyWindowEvent-serial
  XDestroyWindowEvent-send_event
  XDestroyWindowEvent-display
  XDestroyWindowEvent-event
  XDestroyWindowEvent-window
  XDestroyWindowEvent-type-set!
  XDestroyWindowEvent-serial-set!
  XDestroyWindowEvent-send_event-set!
  XDestroyWindowEvent-display-set!
  XDestroyWindowEvent-event-set!
  XDestroyWindowEvent-window-set!
  make-XUnmapEvent
  XUnmapEvent-type
  XUnmapEvent-serial
  XUnmapEvent-send_event
  XUnmapEvent-display
  XUnmapEvent-event
  XUnmapEvent-window
  XUnmapEvent-from_configure
  XUnmapEvent-type-set!
  XUnmapEvent-serial-set!
  XUnmapEvent-send_event-set!
  XUnmapEvent-display-set!
  XUnmapEvent-event-set!
  XUnmapEvent-window-set!
  XUnmapEvent-from_configure-set!
  make-XMapEvent
  XMapEvent-type
  XMapEvent-serial
  XMapEvent-send_event
  XMapEvent-display
  XMapEvent-event
  XMapEvent-window
  XMapEvent-override_redirect
  XMapEvent-type-set!
  XMapEvent-serial-set!
  XMapEvent-send_event-set!
  XMapEvent-display-set!
  XMapEvent-event-set!
  XMapEvent-window-set!
  XMapEvent-override_redirect-set!
  make-XMapRequestEvent
  XMapRequestEvent-type
  XMapRequestEvent-serial
  XMapRequestEvent-send_event
  XMapRequestEvent-display
  XMapRequestEvent-parent
  XMapRequestEvent-window
  XMapRequestEvent-type-set!
  XMapRequestEvent-serial-set!
  XMapRequestEvent-send_event-set!
  XMapRequestEvent-display-set!
  XMapRequestEvent-parent-set!
  XMapRequestEvent-window-set!
  make-XReparentEvent
  XReparentEvent-type
  XReparentEvent-serial
  XReparentEvent-send_event
  XReparentEvent-display
  XReparentEvent-event
  XReparentEvent-window
  XReparentEvent-parent
  XReparentEvent-x
  XReparentEvent-y
  XReparentEvent-override_redirect
  XReparentEvent-type-set!
  XReparentEvent-serial-set!
  XReparentEvent-send_event-set!
  XReparentEvent-display-set!
  XReparentEvent-event-set!
  XReparentEvent-window-set!
  XReparentEvent-parent-set!
  XReparentEvent-x-set!
  XReparentEvent-y-set!
  XReparentEvent-override_redirect-set!
  make-XConfigureEvent
  XConfigureEvent-type
  XConfigureEvent-serial
  XConfigureEvent-send_event
  XConfigureEvent-display
  XConfigureEvent-event
  XConfigureEvent-window
  XConfigureEvent-x
  XConfigureEvent-y
  XConfigureEvent-width
  XConfigureEvent-height
  XConfigureEvent-border_width
  XConfigureEvent-above
  XConfigureEvent-override_redirect
  XConfigureEvent-type-set!
  XConfigureEvent-serial-set!
  XConfigureEvent-send_event-set!
  XConfigureEvent-display-set!
  XConfigureEvent-event-set!
  XConfigureEvent-window-set!
  XConfigureEvent-x-set!
  XConfigureEvent-y-set!
  XConfigureEvent-width-set!
  XConfigureEvent-height-set!
  XConfigureEvent-border_width-set!
  XConfigureEvent-above-set!
  XConfigureEvent-override_redirect-set!
  make-XGravityEvent
  XGravityEvent-type
  XGravityEvent-serial
  XGravityEvent-send_event
  XGravityEvent-display
  XGravityEvent-event
  XGravityEvent-window
  XGravityEvent-x
  XGravityEvent-y
  XGravityEvent-type-set!
  XGravityEvent-serial-set!
  XGravityEvent-send_event-set!
  XGravityEvent-display-set!
  XGravityEvent-event-set!
  XGravityEvent-window-set!
  XGravityEvent-x-set!
  XGravityEvent-y-set!
  make-XResizeRequestEvent
  XResizeRequestEvent-type
  XResizeRequestEvent-serial
  XResizeRequestEvent-send_event
  XResizeRequestEvent-display
  XResizeRequestEvent-window
  XResizeRequestEvent-width
  XResizeRequestEvent-height
  XResizeRequestEvent-type-set!
  XResizeRequestEvent-serial-set!
  XResizeRequestEvent-send_event-set!
  XResizeRequestEvent-display-set!
  XResizeRequestEvent-window-set!
  XResizeRequestEvent-width-set!
  XResizeRequestEvent-height-set!
  make-XConfigureRequestEvent
  XConfigureRequestEvent-type
  XConfigureRequestEvent-serial
  XConfigureRequestEvent-send_event
  XConfigureRequestEvent-display
  XConfigureRequestEvent-parent
  XConfigureRequestEvent-window
  XConfigureRequestEvent-x
  XConfigureRequestEvent-y
  XConfigureRequestEvent-width
  XConfigureRequestEvent-height
  XConfigureRequestEvent-border_width
  XConfigureRequestEvent-above
  XConfigureRequestEvent-detail
  XConfigureRequestEvent-value_mask
  XConfigureRequestEvent-type-set!
  XConfigureRequestEvent-serial-set!
  XConfigureRequestEvent-send_event-set!
  XConfigureRequestEvent-display-set!
  XConfigureRequestEvent-parent-set!
  XConfigureRequestEvent-window-set!
  XConfigureRequestEvent-x-set!
  XConfigureRequestEvent-y-set!
  XConfigureRequestEvent-width-set!
  XConfigureRequestEvent-height-set!
  XConfigureRequestEvent-border_width-set!
  XConfigureRequestEvent-above-set!
  XConfigureRequestEvent-detail-set!
  XConfigureRequestEvent-value_mask-set!
  make-XCirculateEvent
  XCirculateEvent-type
  XCirculateEvent-serial
  XCirculateEvent-send_event
  XCirculateEvent-display
  XCirculateEvent-event
  XCirculateEvent-window
  XCirculateEvent-place
  XCirculateEvent-type-set!
  XCirculateEvent-serial-set!
  XCirculateEvent-send_event-set!
  XCirculateEvent-display-set!
  XCirculateEvent-event-set!
  XCirculateEvent-window-set!
  XCirculateEvent-place-set!
  make-XCirculateRequestEvent
  XCirculateRequestEvent-type
  XCirculateRequestEvent-serial
  XCirculateRequestEvent-send_event
  XCirculateRequestEvent-display
  XCirculateRequestEvent-parent
  XCirculateRequestEvent-window
  XCirculateRequestEvent-place
  XCirculateRequestEvent-type-set!
  XCirculateRequestEvent-serial-set!
  XCirculateRequestEvent-send_event-set!
  XCirculateRequestEvent-display-set!
  XCirculateRequestEvent-parent-set!
  XCirculateRequestEvent-window-set!
  XCirculateRequestEvent-place-set!
  make-XPropertyEvent
  XPropertyEvent-type
  XPropertyEvent-serial
  XPropertyEvent-send_event
  XPropertyEvent-display
  XPropertyEvent-window
  XPropertyEvent-atom
  XPropertyEvent-time
  XPropertyEvent-state
  XPropertyEvent-type-set!
  XPropertyEvent-serial-set!
  XPropertyEvent-send_event-set!
  XPropertyEvent-display-set!
  XPropertyEvent-window-set!
  XPropertyEvent-atom-set!
  XPropertyEvent-time-set!
  XPropertyEvent-state-set!
  make-XSelectionClearEvent
  XSelectionClearEvent-type
  XSelectionClearEvent-serial
  XSelectionClearEvent-send_event
  XSelectionClearEvent-display
  XSelectionClearEvent-window
  XSelectionClearEvent-selection
  XSelectionClearEvent-time
  XSelectionClearEvent-type-set!
  XSelectionClearEvent-serial-set!
  XSelectionClearEvent-send_event-set!
  XSelectionClearEvent-display-set!
  XSelectionClearEvent-window-set!
  XSelectionClearEvent-selection-set!
  XSelectionClearEvent-time-set!
  make-XSelectionRequestEvent
  XSelectionRequestEvent-type
  XSelectionRequestEvent-serial
  XSelectionRequestEvent-send_event
  XSelectionRequestEvent-display
  XSelectionRequestEvent-owner
  XSelectionRequestEvent-requestor
  XSelectionRequestEvent-selection
  XSelectionRequestEvent-target
  XSelectionRequestEvent-property
  XSelectionRequestEvent-time
  XSelectionRequestEvent-type-set!
  XSelectionRequestEvent-serial-set!
  XSelectionRequestEvent-send_event-set!
  XSelectionRequestEvent-display-set!
  XSelectionRequestEvent-owner-set!
  XSelectionRequestEvent-requestor-set!
  XSelectionRequestEvent-selection-set!
  XSelectionRequestEvent-target-set!
  XSelectionRequestEvent-property-set!
  XSelectionRequestEvent-time-set!
  make-XSelectionEvent
  XSelectionEvent-type
  XSelectionEvent-serial
  XSelectionEvent-send_event
  XSelectionEvent-display
  XSelectionEvent-requestor
  XSelectionEvent-selection
  XSelectionEvent-target
  XSelectionEvent-property
  XSelectionEvent-time
  XSelectionEvent-type-set!
  XSelectionEvent-serial-set!
  XSelectionEvent-send_event-set!
  XSelectionEvent-display-set!
  XSelectionEvent-requestor-set!
  XSelectionEvent-selection-set!
  XSelectionEvent-target-set!
  XSelectionEvent-property-set!
  XSelectionEvent-time-set!
  make-XColormapEvent
  XColormapEvent-type
  XColormapEvent-serial
  XColormapEvent-send_event
  XColormapEvent-display
  XColormapEvent-window
  XColormapEvent-colormap
  XColormapEvent-new
  XColormapEvent-state
  XColormapEvent-type-set!
  XColormapEvent-serial-set!
  XColormapEvent-send_event-set!
  XColormapEvent-display-set!
  XColormapEvent-window-set!
  XColormapEvent-colormap-set!
  XColormapEvent-new-set!
  XColormapEvent-state-set!
  make-XMappingEvent
  XMappingEvent-type
  XMappingEvent-serial
  XMappingEvent-send_event
  XMappingEvent-display
  XMappingEvent-window
  XMappingEvent-request
  XMappingEvent-first_keycode
  XMappingEvent-count
  XMappingEvent-type-set!
  XMappingEvent-serial-set!
  XMappingEvent-send_event-set!
  XMappingEvent-display-set!
  XMappingEvent-window-set!
  XMappingEvent-request-set!
  XMappingEvent-first_keycode-set!
  XMappingEvent-count-set!
  make-XErrorEvent
  XErrorEvent-type
  XErrorEvent-display
  XErrorEvent-resourceid
  XErrorEvent-serial
  XErrorEvent-error_code
  XErrorEvent-request_code
  XErrorEvent-minor_code
  XErrorEvent-type-set!
  XErrorEvent-display-set!
  XErrorEvent-resourceid-set!
  XErrorEvent-serial-set!
  XErrorEvent-error_code-set!
  XErrorEvent-request_code-set!
  XErrorEvent-minor_code-set!
  make-XAnyEvent
  XAnyEvent-type
  XAnyEvent-serial
  XAnyEvent-send_event
  XAnyEvent-display
  XAnyEvent-window
  XAnyEvent-type-set!
  XAnyEvent-serial-set!
  XAnyEvent-send_event-set!
  XAnyEvent-display-set!
  XAnyEvent-window-set!
  make-XCharStruct
  XCharStruct-lbearing
  XCharStruct-rbearing
  XCharStruct-width
  XCharStruct-ascent
  XCharStruct-descent
  XCharStruct-attributes
  XCharStruct-lbearing-set!
  XCharStruct-rbearing-set!
  XCharStruct-width-set!
  XCharStruct-ascent-set!
  XCharStruct-descent-set!
  XCharStruct-attributes-set!
  make-XFontProp
  XFontProp-name
  XFontProp-card32
  XFontProp-name-set!
  XFontProp-card32-set!
  make-XTextItem
  XTextItem-chars
  XTextItem-nchars
  XTextItem-delta
  XTextItem-font
  XTextItem-chars-set!
  XTextItem-nchars-set!
  XTextItem-delta-set!
  XTextItem-font-set!
  make-XChar2b
  XChar2b-byte1
  XChar2b-byte2
  XChar2b-byte1-set!
  XChar2b-byte2-set!
  make-XTextItem16
  XTextItem16-chars
  XTextItem16-nchars
  XTextItem16-delta
  XTextItem16-font
  XTextItem16-chars-set!
  XTextItem16-nchars-set!
  XTextItem16-delta-set!
  XTextItem16-font-set!
  ;; functions
  XLoadQueryFont
  XQueryFont
  XGetMotionEvents
  XDeleteModifiermapEntry
  XGetModifierMapping
  XInsertModifiermapEntry
  XNewModifiermap
  XCreateImage
  XInitImage
  XGetImage
  XGetSubImage
  XOpenDisplay
  XrmInitialize
  XFetchBytes
  XFetchBuffer
  XGetAtomName
  XGetAtomNames
  XGetDefault
  XDisplayName
  XKeysymToString
  XInternAtom
  XInternAtoms
  XCopyColormapAndFree
  XCreateColormap
  XCreatePixmapCursor
  XCreateGlyphCursor
  XCreateFontCursor
  XLoadFont
  XCreateGC
  XGContextFromGC
  XFlushGC
  XCreatePixmap
  XCreateBitmapFromData
  XCreatePixmapFromBitmapData
  XCreateSimpleWindow
  XGetSelectionOwner
  XCreateWindow
  XListInstalledColormaps
  XListFonts
  XListFontsWithInfo
  XGetFontPath
  XListExtensions
  XListProperties
  XListHosts
  XKeycodeToKeysym
  XLookupKeysym
  XGetKeyboardMapping
  XStringToKeysym
  XMaxRequestSize
  XExtendedMaxRequestSize
  XResourceManagerString
  XScreenResourceString
  XDisplayMotionBufferSize
  XVisualIDFromVisual
  XInitThreads
  XLockDisplay
  XUnlockDisplay
  XInitExtension
  XAddExtension
  XFindOnExtensionList

  XRootWindow
  XDefaultRootWindow
  XRootWindowOfScreen
  XDefaultVisual
  XDefaultVisualOfScreen
  XDefaultGC
  XDefaultGCOfScreen
  XBlackPixel
  XWhitePixel
  XAllPlanes
  XBlackPixelOfScreen
  XWhitePixelOfScreen
  XNextRequest
  XLastKnownRequestProcessed
  XServerVendor
  XDisplayString
  XDefaultColormap
  XDefaultColormapOfScreen
  XDisplayOfScreen
  XScreenOfDisplay
  XDefaultScreenOfDisplay
  XEventMaskOfScreen
  XScreenNumberOfScreen
  XSetErrorHandler
  ;; XSetIOErrorHandler
  XListPixmapFormats
  ;; XListDepths
  XReconfigureWMWindow
  XGetWMProtocols
  XSetWMProtocols
  XIconifyWindow
  XWithdrawWindow
  XGetCommand
  XGetWMColormapWindows
  XSetWMColormapWindows
  XFreeStringList
  XSetTransientForHint
  XActivateScreenSaver
  XAddHost
  XAddHosts
  ;; XAddToExtensionList
  XAddToSaveSet
  XAllocColor
  XAllocColorCells
  XAllocColorPlanes
  XAllocNamedColor
  XAllowEvents
  XAutoRepeatOff
  XAutoRepeatOn
  XBell
  XBitmapBitOrder
  XBitmapPad
  XBitmapUnit
  XCellsOfScreen
  XChangeActivePointerGrab
  XChangeGC
  XChangeKeyboardControl
  XChangeKeyboardMapping
  XChangePointerControl
  XChangeProperty
  XChangeSaveSet
  XChangeWindowAttributes
  ;; XCheckIfEvent
  XCheckMaskEvent
  XCheckTypedEvent
  XCheckTypedWindowEvent
  XCheckWindowEvent
  XCirculateSubwindows
  XCirculateSubwindowsDown
  XCirculateSubwindowsUp
  XClearArea
  XClearWindow
  XCloseDisplay
  XConfigureWindow
  XConnectionNumber
  XConvertSelection
  XCopyArea
  XCopyGC
  XCopyPlane
  XDefaultDepth
  XDefaultDepthOfScreen
  XDefaultScreen
  XDefineCursor
  XDeleteProperty
  XDestroyWindow
  XDestroySubwindows
  XDoesBackingStore
  XDoesSaveUnders
  XDisableAccessControl
  XDisplayCells
  XDisplayHeight
  XDisplayHeightMM
  XDisplayKeycodes
  XDisplayPlanes
  XDisplayWidth
  XDisplayWidthMM
  XDrawArc
  XDrawArcs
  XDrawImageString
  XDrawImageString16
  XDrawLine
  XDrawLines
  XDrawPoint
  XDrawPoints
  XDrawRectangle
  XDrawRectangles
  XDrawSegments
  XDrawString
  XDrawString16
  XDrawText
  XDrawText16
  XEnableAccessControl
  XEventsQueued
  XFetchName
  XFillArc
  XFillArcs
  XFillPolygon
  XFillRectangle
  XFillRectangles
  XFlush
  XForceScreenSaver
  XFree
  XFreeColormap
  XFreeColors
  XFreeCursor
  XFreeExtensionList
  XFreeFont
  XFreeFontInfo
  XFreeFontNames
  XFreeFontPath
  XFreeGC
  XFreeModifiermap
  XFreePixmap
  XGeometry
  XGetErrorDatabaseText
  XGetErrorText
  XGetFontProperty
  XGetGCValues
  XGetGeometry
  XGetIconName
  XGetInputFocus
  XGetKeyboardControl
  XGetPointerControl
  XGetPointerMapping
  XGetScreenSaver
  XGetTransientForHint
  XGetWindowProperty
  XGetWindowAttributes
  XGrabButton
  XGrabKey
  XGrabKeyboard
  XGrabPointer
  XGrabServer
  XHeightMMOfScreen
  XHeightOfScreen
  ;; XIfEvent
  XImageByteOrder
  XInstallColormap
  XKeysymToKeycode
  XKillClient
  XLookupColor
  XLowerWindow
  XMapRaised
  XMapSubwindows
  XMapWindow
  XMaskEvent
  XMaxCmapsOfScreen
  XMinCmapsOfScreen
  XMoveResizeWindow
  XMoveWindow
  XNextEvent
  XNoOp
  XParseColor
  XParseGeometry
  ;; XPeekEvent
  ;; XPeekIfEvent
  XPending
  XPlanesOfScreen
  XProtocolRevision
  XProtocolVersion
  XPutBackEvent
  XPutImage
  XQLength
  XQueryBestCursor
  XQueryBestSize
  XQueryBestStipple
  XQueryBestTile
  XQueryColor
  XQueryColors
  XQueryExtension
  ;; XQueryKeymap
  XQueryPointer
  XQueryTextExtents
  XQueryTextExtents16
  XQueryTree
  XRaiseWindow
  XReadBitmapFile
  XReadBitmapFileData
  XRebindKeysym
  XRecolorCursor
  XRefreshKeyboardMapping
  XRemoveFromSaveSet
  XRemoveHost
  XRemoveHosts
  XReparentWindow
  XResetScreenSaver
  XResizeWindow
  XRestackWindows
  XRotateBuffers
  XRotateWindowProperties
  XScreenCount
  XSelectInput
  XSendEvent
  XSetAccessControl
  XSetArcMode
  XSetBackground
  XSetClipMask
  XSetClipOrigin
  XSetClipRectangles
  XSetCloseDownMode
  XSetCommand
  XSetDashes
  XSetFillRule
  XSetFillStyle
  XSetFont
  XSetFontPath
  XSetForeground
  XSetFunction
  XSetGraphicsExposures
  XSetIconName
  XSetInputFocus
  XSetLineAttributes
  XSetModifierMapping
  XSetPlaneMask
  XSetPointerMapping
  XSetScreenSaver
  XSetSelectionOwner
  XSetState
  XSetStipple
  XSetSubwindowMode
  XSetTSOrigin
  XSetTile
  XSetWindowBackground
  XSetWindowBackgroundPixmap
  XSetWindowBorder
  XSetWindowBorderPixmap
  XSetWindowBorderWidth
  XSetWindowColormap
  XStoreBuffer
  XStoreBytes
  XStoreColor
  XStoreColors
  XStoreName
  XStoreNamedColor
  XSync
  XTextExtents
  XTextExtents16
  XTextWidth
  XTextWidth16
  XTranslateCoordinates
  XUndefineCursor
  XUngrabButton
  XUngrabKey
  XUngrabKeyboard
  XUngrabPointer
  XUngrabServer
  XUninstallColormap
  XUnloadFont
  XUnmapSubwindows
  XUnmapWindow
  XVendorRelease
  XWarpPointer
  XWidthMMOfScreen
  XWidthOfScreen
  XWindowEvent
  XWriteBitmapFile
  XSupportsLocale
  XSetLocaleModifiers
  ;; XOpenOM
  XCreateFontSet
  XFreeFontSet
  XFontsOfFontSet
  XBaseFontNameListOfFontSet
  XLocaleOfFontSet
  XContextDependentDrawing
  XDirectionalDependentDrawing
  XContextualDrawing
  XExtentsOfFontSet
  XmbTextEscapement
  XwcTextEscapement
  Xutf8TextEscapement
  XmbTextExtents
  XwcTextExtents
  Xutf8TextExtents
  XmbTextPerCharExtents
  XwcTextPerCharExtents
  Xutf8TextPerCharExtents
  XmbDrawText
  XwcDrawText
  Xutf8DrawText
  XmbDrawString
  XwcDrawString
  Xutf8DrawString
  XmbDrawImageString
  XwcDrawImageString
  Xutf8DrawImageString
  ;; XOpenIM
  XCloseIM
  XDisplayOfIM
  XLocaleOfIM
  XDestroyIC
  XSetICFocus
  XUnsetICFocus
  XwcResetIC
  XmbResetIC
  Xutf8ResetIC
  XIMOfIC
  XFilterEvent
  XmbLookupString
  XwcLookupString
  Xutf8LookupString
  ;; XRegisterIMInstantiateCallback
  ;; XUnregisterIMInstantiateCallback
  XInternalConnectionNumbers
  XProcessInternalConnection
  ;; XAddConnectionWatch
  ;; XRemoveConnectionWatch
  XSetAuthorization
  ;; _Xmbtowc
  ;; _Xwctomb

  XlibSpecificationRelease

  True
  False
  QueuedAlready
  QueuedAfterReading
  QueuedAfterFlush

  XNRequiredCharSet
  XNQueryOrientation
  XNBaseFontName
  XNOMAutomatic
  XNMissingCharSet
  XNDefaultString
  XNOrientation
  XNDirectionalDependentDrawing
  XNContextualDrawing
  XNFontInfo
  XIMPreeditArea
  XIMPreeditCallbacks
  XIMPreeditPosition
  XIMPreeditNothing
  XIMPreeditNone
  XIMStatusArea
  XIMStatusCallbacks
  XIMStatusNothing
  XIMStatusNone
  XNVaNestedList
  XNQueryInputStyle
  XNClientWindow
  XNInputStyle
  XNFocusWindow
  XNResourceName
  XNResourceClass
  XNGeometryCallback
  XNDestroyCallback
  XNFilterEvents
  XNPreeditStartCallback
  XNPreeditDoneCallback
  XNPreeditDrawCallback
  XNPreeditCaretCallback
  XNPreeditStateNotifyCallback
  XNPreeditAttributes
  XNStatusStartCallback
  XNStatusDoneCallback
  XNStatusDrawCallback
  XNStatusAttributes
  XNArea
  XNAreaNeeded
  XNSpotLocation
  XNColormap
  XNStdColormap
  XNForeground
  XNBackground
  XNBackgroundPixmap
  XNFontSet
  XNLineSpace
  XNCursor
  XNQueryIMValuesList
  XNQueryICValuesList
  XNVisiblePosition
  XNR6PreeditCallback
  XNStringConversionCallback
  XNStringConversion
  XNResetState
  XNHotKey
  XNHotKeyState
  XNPreeditState
  XNSeparatorofNestedList
  XBufferOverflow
  XLookupNone
  XLookupChars
  XLookupKeySym
  XLookupBoth
  XIMReverse
  XIMUnderline
  XIMHighlight
  XIMPrimary
  XIMSecondary
  XIMTertiary
  XIMVisibleToForward
  XIMVisibleToBackword
  XIMVisibleToCenter
  XIMPreeditUnKnown
  XIMPreeditEnable
  XIMPreeditDisable
  XIMInitialState
  XIMPreserveState

  XIMStringConversionLeftEdge
  XIMStringConversionRightEdge
  XIMStringConversionTopEdge
  XIMStringConversionBottomEdge
  XIMStringConversionConcealed
  XIMStringConversionWrapped
  XIMStringConversionBuffer
  XIMStringConversionLine
  XIMStringConversionWord
  XIMStringConversionChar
  XIMStringConversionSubstitution
  XIMStringConversionRetrieval
  XIMHotKeyStateON
  XIMHotKeyStateOFF

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; X.h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  X_PROTOCOL
  X_PROTOCOL_REVISION
  None
  ParentRelative
  CopyFromParent
  PointerWindow
  InputFocus
  PointerRoot
  AnyPropertyType
  AnyKey
  AnyButton
  AllTemporary
  CurrentTime
  NoSymbol
  NoEventMask
  KeyPressMask
  KeyReleaseMask
  ButtonPressMask
  ButtonReleaseMask
  EnterWindowMask
  LeaveWindowMask
  PointerMotionMask
  PointerMotionHintMask
  Button1MotionMask
  Button2MotionMask
  Button3MotionMask
  Button4MotionMask
  Button5MotionMask
  ButtonMotionMask
  KeymapStateMask
  ExposureMask
  VisibilityChangeMask
  StructureNotifyMask
  ResizeRedirectMask
  SubstructureNotifyMask
  SubstructureRedirectMask
  FocusChangeMask
  PropertyChangeMask
  ColormapChangeMask
  OwnerGrabButtonMask
  KeyPress
  KeyRelease
  ButtonPress
  ButtonRelease
  MotionNotify
  EnterNotify
  LeaveNotify
  FocusIn
  FocusOut
  KeymapNotify
  Expose
  GraphicsExpose
  NoExpose
  VisibilityNotify
  CreateNotify
  DestroyNotify
  UnmapNotify
  MapNotify
  MapRequest
  ReparentNotify
  ConfigureNotify
  ConfigureRequest
  GravityNotify
  ResizeRequest
  CirculateNotify
  CirculateRequest
  PropertyNotify
  SelectionClear
  SelectionRequest
  SelectionNotify
  ColormapNotify
  ClientMessage
  MappingNotify
  LASTEvent
  ShiftMask
  LockMask
  ControlMask
  Mod1Mask
  Mod2Mask
  Mod3Mask
  Mod4Mask
  Mod5Mask
  ShiftMapIndex
  LockMapIndex
  ControlMapIndex
  Mod1MapIndex
  Mod2MapIndex
  Mod3MapIndex
  Mod4MapIndex
  Mod5MapIndex
  Button1Mask
  Button2Mask
  Button3Mask
  Button4Mask
  Button5Mask
  AnyModifier
  Button1
  Button2
  Button3
  Button4
  Button5
  NotifyNormal
  NotifyGrab
  NotifyUngrab
  NotifyWhileGrabbed
  NotifyHint
  NotifyAncestor
  NotifyVirtual
  NotifyInferior
  NotifyNonlinear
  NotifyNonlinearVirtual
  NotifyPointer
  NotifyPointerRoot
  NotifyDetailNone
  VisibilityUnobscured
  VisibilityPartiallyObscured
  VisibilityFullyObscured
  PlaceOnTop
  PlaceOnBottom
  FamilyInternet
  FamilyDECnet
  FamilyChaos
  FamilyInternet6
  FamilyServerInterpreted
  PropertyNewValue
  PropertyDelete
  ColormapUninstalled
  ColormapInstalled
  GrabModeSync
  GrabModeAsync
  GrabSuccess
  AlreadyGrabbed
  GrabInvalidTime
  GrabNotViewable
  GrabFrozen
  AsyncPointer
  SyncPointer
  ReplayPointer
  AsyncKeyboard
  SyncKeyboard
  ReplayKeyboard
  AsyncBoth
  SyncBoth
  RevertToNone
  RevertToPointerRoot
  RevertToParent
  Success
  BadRequest
  BadValue
  BadWindow
  BadPixmap
  BadAtom
  BadCursor
  BadFont
  BadMatch
  BadDrawable
  BadAccess
  BadAlloc
  BadColor
  BadGC
  BadIDChoice
  BadName
  BadLength
  BadImplementation
  FirstExtensionError
  LastExtensionError
  InputOutput
  InputOnly
  CWBackPixmap
  CWBackPixel
  CWBorderPixmap
  CWBorderPixel
  CWBitGravity
  CWWinGravity
  CWBackingStore
  CWBackingPlanes
  CWBackingPixel
  CWOverrideRedirect
  CWSaveUnder
  CWEventMask
  CWDontPropagate
  CWColormap
  CWCursor
  CWX
  CWY
  CWWidth
  CWHeight
  CWBorderWidth
  CWSibling
  CWStackMode
  ForgetGravity
  NorthWestGravity
  NorthGravity
  NorthEastGravity
  WestGravity
  CenterGravity
  EastGravity
  SouthWestGravity
  SouthGravity
  SouthEastGravity
  StaticGravity
  UnmapGravity
  NotUseful
  WhenMapped
  Always
  IsUnmapped
  IsUnviewable
  IsViewable
  SetModeInsert
  SetModeDelete
  DestroyAll
  RetainPermanent
  RetainTemporary
  Above
  Below
  TopIf
  BottomIf
  Opposite
  RaiseLowest
  LowerHighest
  PropModeReplace
  PropModePrepend
  PropModeAppend
  GXclear
  GXand
  GXandReverse
  GXcopy
  GXandInverted
  GXnoop
  GXxor
  GXor
  GXnor
  GXequiv
  GXinvert
  GXorReverse
  GXcopyInverted
  GXorInverted
  GXnand
  GXset
  LineSolid
  LineOnOffDash
  LineDoubleDash
  CapNotLast
  CapButt
  CapRound
  CapProjecting
  JoinMiter
  JoinRound
  JoinBevel
  FillSolid
  FillTiled
  FillStippled
  FillOpaqueStippled
  EvenOddRule
  WindingRule
  ClipByChildren
  IncludeInferiors
  Unsorted
  YSorted
  YXSorted
  YXBanded
  CoordModeOrigin
  CoordModePrevious
  Complex
  Nonconvex
  Convex
  ArcChord
  ArcPieSlice
  GCFunction
  GCPlaneMask
  GCForeground
  GCBackground
  GCLineWidth
  GCLineStyle
  GCCapStyle
  GCJoinStyle
  GCFillStyle
  GCFillRule
  GCTile
  GCStipple
  GCTileStipXOrigin
  GCTileStipYOrigin
  GCFont
  GCSubwindowMode
  GCGraphicsExposures
  GCClipXOrigin
  GCClipYOrigin
  GCClipMask
  GCDashOffset
  GCDashList
  GCArcMode
  GCLastBit
  FontLeftToRight
  FontRightToLeft
  FontChange
  XYBitmap
  XYPixmap
  ZPixmap
  AllocNone
  AllocAll
  DoRed
  DoGreen
  DoBlue
  CursorShape
  TileShape
  StippleShape
  AutoRepeatModeOff
  AutoRepeatModeOn
  AutoRepeatModeDefault
  LedModeOff
  LedModeOn
  KBKeyClickPercent
  KBBellPercent
  KBBellPitch
  KBBellDuration
  KBLed
  KBLedMode
  KBKey
  KBAutoRepeatMode
  MappingSuccess
  MappingBusy
  MappingFailed
  MappingModifier
  MappingKeyboard
  MappingPointer
  DontPreferBlanking
  PreferBlanking
  DefaultBlanking
  DisableScreenSaver
  DisableScreenInterval
  DontAllowExposures
  AllowExposures
  DefaultExposures
  ScreenSaverReset
  ScreenSaverActive
  HostInsert
  HostDelete
  EnableAccess
  DisableAccess
  StaticGray
  GrayScale
  StaticColor
  PseudoColor
  TrueColor
  DirectColor
  LSBFirst
  MSBFirst
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  XA_PRIMARY
  XA_SECONDARY
  XA_ARC
  XA_ATOM
  XA_BITMAP
  XA_CARDINAL
  XA_COLORMAP
  XA_CURSOR
  XA_CUT_BUFFER0
  XA_CUT_BUFFER1
  XA_CUT_BUFFER2
  XA_CUT_BUFFER3
  XA_CUT_BUFFER4
  XA_CUT_BUFFER5
  XA_CUT_BUFFER6
  XA_CUT_BUFFER7
  XA_DRAWABLE
  XA_FONT
  XA_INTEGER
  XA_PIXMAP
  XA_POINT
  XA_RECTANGLE
  XA_RESOURCE_MANAGER
  XA_RGB_COLOR_MAP
  XA_RGB_BEST_MAP
  XA_RGB_BLUE_MAP
  XA_RGB_DEFAULT_MAP
  XA_RGB_GRAY_MAP
  XA_RGB_GREEN_MAP
  XA_RGB_RED_MAP
  XA_STRING
  XA_VISUALID
  XA_WINDOW
  XA_WM_COMMAND
  XA_WM_HINTS
  XA_WM_CLIENT_MACHINE
  XA_WM_ICON_NAME
  XA_WM_ICON_SIZE
  XA_WM_NAME
  XA_WM_NORMAL_HINTS
  XA_WM_SIZE_HINTS
  XA_WM_ZOOM_HINTS
  XA_MIN_SPACE
  XA_NORM_SPACE
  XA_MAX_SPACE
  XA_END_SPACE
  XA_SUPERSCRIPT_X
  XA_SUPERSCRIPT_Y
  XA_SUBSCRIPT_X
  XA_SUBSCRIPT_Y
  XA_UNDERLINE_POSITION
  XA_UNDERLINE_THICKNESS
  XA_STRIKEOUT_ASCENT
  XA_STRIKEOUT_DESCENT
  XA_ITALIC_ANGLE
  XA_X_HEIGHT
  XA_QUAD_WIDTH
  XA_WEIGHT
  XA_POINT_SIZE
  XA_RESOLUTION
  XA_COPYRIGHT
  XA_NOTICE
  XA_FONT_NAME
  XA_FAMILY_NAME
  XA_FULL_NAME
  XA_CAP_HEIGHT
  XA_WM_CLASS
  XA_WM_TRANSIENT_FOR
  XA_LAST_PREDEFINED
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; cursorfont.h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  XC_num_glyphs
  XC_X_cursor
  XC_arrow
  XC_based_arrow_down
  XC_based_arrow_up
  XC_boat
  XC_bogosity
  XC_bottom_left_corner
  XC_bottom_right_corner
  XC_bottom_side
  XC_bottom_tee
  XC_box_spiral
  XC_center_ptr
  XC_circle
  XC_clock
  XC_coffee_mug
  XC_cross
  XC_cross_reverse
  XC_crosshair
  XC_diamond_cross
  XC_dot
  XC_dotbox
  XC_double_arrow
  XC_draft_large
  XC_draft_small
  XC_draped_box
  XC_exchange
  XC_fleur
  XC_gobbler
  XC_gumby
  XC_hand1
  XC_hand2
  XC_heart
  XC_icon
  XC_iron_cross
  XC_left_ptr
  XC_left_side
  XC_left_tee
  XC_leftbutton
  XC_ll_angle
  XC_lr_angle
  XC_man
  XC_middlebutton
  XC_mouse
  XC_pencil
  XC_pirate
  XC_plus
  XC_question_arrow
  XC_right_ptr
  XC_right_side
  XC_right_tee
  XC_rightbutton
  XC_rtl_logo
  XC_sailboat
  XC_sb_down_arrow
  XC_sb_h_double_arrow
  XC_sb_left_arrow
  XC_sb_right_arrow
  XC_sb_up_arrow
  XC_sb_v_double_arrow
  XC_shuttle
  XC_sizing
  XC_spider
  XC_spraycan
  XC_star
  XC_target
  XC_tcross
  XC_top_left_arrow
  XC_top_left_corner
  XC_top_right_corner
  XC_top_side
  XC_top_tee
  XC_trek
  XC_ul_angle
  XC_umbrella
  XC_ur_angle
  XC_watch
  XC_xterm

  make-XEvent)

 (import (rnrs)
         (ypsilon c-types)
         (psilab xlib compat))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (typedef void* bytevector)

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; C types
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (typedef uint8_t unsigned-char)

 ;; (typedef char unsigned-char)

 (typedef void* char**)
 (typedef void* char***)

 (typedef void* unsigned-char*)
 (typedef void* unsigned-char**)

 (typedef char* const-char*)

 (typedef void* const-unsigned-char*)

 (typedef void* int*)

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (define (make-XEvent) (make-bytevector 96))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; typedefs
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (typedef int Bool)
 (typedef unsigned-long XID)
 (typedef unsigned-long Mask)
 (typedef unsigned-long Atom)
 (typedef unsigned-long VisualID)
 (typedef unsigned-long Time)
 (typedef XID Window)
 (typedef XID Drawable)
 (typedef XID Font)
 (typedef XID Pixmap)
 (typedef XID Cursor)
 (typedef XID Colormap)
 (typedef XID GContext)
 (typedef XID KeySym)

 (typedef unsigned-char KeyCode)
 
 (typedef void* Display*)
 (typedef void* XExtData*)
 (typedef void* Visual*)
 (typedef void* Depth*)
 (typedef void* Screen*)
 (typedef void* KeyCode*)
 (typedef void* XCharStruct*)
 (typedef void* XChar2b*)
 (typedef void* GC)
 (typedef void* XFontSet)
 (typedef void* XIM)
 (typedef void* XIC)
 (typedef void* XFontStruct*)
 (typedef void* XTimeCoord*)
 (typedef void* XModifierKeymap*)
 (typedef void* XImage*)
 (typedef void* Colormap*)
 (typedef void* Atom*)
 (typedef void* XHostAddress*)
 (typedef void* XExtCodes*)
 (typedef void* XPixmapFormatValues*)
 (typedef void* XFontSetExtents*)
 (typedef void* wchar_t*)
 (typedef int Status)
 (typedef void* Atom**)
 (typedef void* Bool*)
 (typedef void* const-wchar_t*)
 (typedef void* const-XChar2b*)
 (typedef void* int**)
 (typedef void* KeySym*)
 (typedef void* Pixmap*)
 (typedef void* Status*)
 (typedef bytevector unsigned-int*)
 (typedef void* unsigned-long*)
 (typedef bytevector Window*)
 (typedef void* Window**)
 (typedef void* XArc*)
 (typedef void* XColor*)
 (typedef void* XColor-const-*)
 (typedef bytevector XEvent*)
 (typedef void* _XExtData**)
 (typedef void* XExtData**)
 (typedef void* XFontStruct**)
 (typedef void* XFontStruct***)
 (typedef void* XGCValues*)
 (typedef void* XKeyboardControl*)
 (typedef void* XKeyboardState*)
 (typedef void* XKeyEvent*)
 (typedef void* XKeyPressedEvent*)
 (typedef void* XMappingEvent*)
 (typedef void* XmbTextItem*)
 (typedef void* XPoint*)
 (typedef void* XRectangle*)
 (typedef void* _XrmHashBucketRec*)
 (typedef void* XSegment*)
 (typedef void* XSetWindowAttributes*)
 (typedef void* XTextItem*)
 (typedef void* XTextItem16*)
 (typedef void* XwcTextItem*)
 (typedef void* XWindowAttributes*)
 (typedef void* XWindowChanges*)

 (typedef void* XErrorEvent*)

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; structs
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ;; Commented items are not yet converted. Please do so as needed!

 ;; /*
 ;;  * Extensions need a way to hang private data on some structures.
 ;;  */
 ;; typedef struct _XExtData {
 ;;  int number;     /* number returned by XRegisterExtension */
 ;;  struct _XExtData *next; /* next item on list of data for structure */
 ;;  int (*free_private)(    /* called to free private storage */
 ;;  struct _XExtData *extension
 ;;  );
 ;;  XPointer private_data;  /* data private to this extension. */
 ;; } XExtData;

 (c-structure XExtCodes
              (int extension)
              (int major_opcode)
              (int first_event)
              (int first_error))

 (c-structure XPixmapFormatValues
              (int depth)
              (int bits_per_pixel)
              (int scanline_pad))

 (c-structure XGCValues
              (int function)
              (unsigned-long plane_mask)
              (unsigned-long foreground)
              (unsigned-long background)
              (int line_width)
              (int line_style)
              (int cap_style)

              (int join_style)
              (int fill_style)

              (int fill_rule)
              (int arc_mode)
              (Pixmap tile)
              (Pixmap stipple)
              (int ts_x_origin)
              (int ts_y_origin)
              (Font font)
              (int subwindow_mode)
              (Bool graphics_exposures)
              (int clip_x_origin)
              (int clip_y_origin)
              (Pixmap clip_mask)
              (int dash_offset)
              (char dashes))

 ;; /*
 ;;  * Graphics context.  The contents of this structure are implementation
 ;;  * dependent.  A GC should be treated as opaque by application code.
 ;;  */

 ;; typedef struct _XGC
 ;; #ifdef XLIB_ILLEGAL_ACCESS
 ;; {
 ;;     XExtData *ext_data;  /* hook for extension to hang data */
 ;;     GContext gid;    /* protocol ID for graphics context */
 ;;     /* there is more to this structure, but it is private to Xlib */
 ;; }
 ;; #endif
 ;; *GC;

 (c-structure Visual
              (XExtData* ext_data)
              (VisualID visualid)
              (int class)
              (unsigned-long red_mask)
              (unsigned-long green_mask)
              (unsigned-long blue_mask)
              (int bits_per_rgb)
              (int map_entries))

 (c-structure Depth
              (int depth)
              (int nvisuals)
              (Visual* visuals))

 (c-structure Screen
              (XExtData* ext_data)
              (Display*  display)
              (Window root)
              (int width)
              (int height)
              (int mwidth)
              (int mheight)
              (int ndepths)
              (Depth* depths)
              (int root_depth)
              (Visual* root_visual)
              (GC default_gc)
              (Colormap cmap)
              (unsigned-long white_pixel)
              (unsigned-long black_pixel)
              (int max_maps)
              (int min_maps)
              (int backing_store)
              (Bool save_unders)
              (long root_input_mask))

 (c-structure ScreenFormat
              (XExtData* ext_data)
              (int depth)
              (int bits_per_pixel)
              (int scanline_pad))

 (c-structure XSetWindowAttributes
              (Pixmap background_pixmap)
              (unsigned-long background_pixel)
              (Pixmap border_pixmap)
              (unsigned-long border_pixel)
              (int bit_gravity)
              (int win_gravity)
              (int backing_store)
              (unsigned-long backing_planes)
              (unsigned-long backing_pixel)
              (Bool save_under)
              (long event_mask)
              (long do_not_propagate_mask)
              (Bool override_redirect)
              (Colormap colormap)
              (Cursor cursor))

 (c-structure XWindowAttributes
              (int x)
              (int y)
              (int width)
              (int height)
              (int border_width)
              (int depth)
              (Visual* visual)
              (Window root)
              (int class)
              (int bit_gravity)
              (int win_gravity)
              (int backing_store)
              (unsigned-long backing_planes)
              (unsigned-long backing_pixel)
              (Bool save_under)
              (Colormap colormap)
              (Bool map_installed)
              (int map_state)
              (long all_event_masks)
              (long your_event_mask)
              (long do_not_propagate_mask)
              (Bool override_redirect)
              (Screen* screen))

 (c-structure XHostAddress
              (int family)
              (int length)
              (char* address))

 (c-structure XServerInterpretedAddress
              (int typelength)
              (int valuelength)
              (char* type)
              (char* value))

 ;; /*
 ;;  * Data structure for "image" data, used by image manipulation routines.
 ;;  */
 ;; typedef struct _XImage {
 ;;     int width, height;       /* size of image */
 ;;     int xoffset;     /* number of pixels offset in X direction */
 ;;     int format;          /* XYBitmap, XYPixmap, ZPixmap */
 ;;     char* data;          /* pointer to image data */
 ;;     int byte_order;      /* data byte order, LSBFirst, MSBFirst */
 ;;     int bitmap_unit;     /* quant. of scanline 8, 16, 32 */
 ;;     int bitmap_bit_order;    /* LSBFirst, MSBFirst */
 ;;     int bitmap_pad;      /* 8, 16, 32 either XY or ZPixmap */
 ;;     int depth;           /* depth of image */
 ;;     int bytes_per_line;      /* accelarator to next line */
 ;;     int bits_per_pixel;      /* bits per pixel (ZPixmap) */
 ;;     unsigned-long red_mask;  /* bits in z arrangment */
 ;;     unsigned-long green_mask;
 ;;     unsigned-long blue_mask;
 ;;     XPointer obdata;     /* hook for the object routines to hang on */
 ;;     struct funcs {       /* image manipulation routines */
 ;;  struct _XImage *(*create_image)(
 ;;      struct _XDisplay* /* display */,
 ;;      Visual*     /* visual */,
 ;;      unsigned int    /* depth */,
 ;;      int     /* format */,
 ;;      int     /* offset */,
 ;;      char*       /* data */,
 ;;      unsigned int    /* width */,
 ;;      unsigned int    /* height */,
 ;;      int     /* bitmap_pad */,
 ;;      int     /* bytes_per_line */);
 ;;  int (*destroy_image)        (struct _XImage *);
 ;;  unsigned-long (*get_pixel)  (struct _XImage *, int, int);
 ;;  int (*put_pixel)            (struct _XImage *, int, int, unsigned-long);
 ;;  struct _XImage *(*sub_image)(struct _XImage *, int, int, unsigned int, unsigned int);
 ;;  int (*add_pixel)            (struct _XImage *, long);
 ;;  } f;
 ;; } XImage;

 (c-structure XWindowChanges
              (int x)
              (int y)
              (int width)
              (int height)
              (int border_width)
              (Window sibling)
              (int stack_mode))

 (c-structure XColor
              (unsigned-long pixel)
              (unsigned-short red)
              (unsigned-short green)
              (unsigned-short blue)
              (char flags)
              (char pad))

 (c-structure XSegment
              (short x1)
              (short y1)
              (short x2)
              (short y2))

 (c-structure XPoint
              (short x)
              (short y))

 (c-structure XRectangle
              (short x)
              (short y)
              (unsigned-short width)
              (unsigned-short height))

 (c-structure XArc
              (short x)
              (short y)
              (unsigned-short width)
              (unsigned-short height)
              (short angle1)
              (short angle2))

 (c-structure XKeyboardControl
              (int key_click_percent)
              (int bell_percent)
              (int bell_pitch)
              (int bell_duration)
              (int led)
              (int led_mode)
              (int key)
              (int auto_repeat_mode))

 ;; (c-structure XKeyboardState 
 ;;              (int key_click_percent)
 ;;              (int bell_percent)
 ;;              (unsigned-int bell_pitch)
 ;;              (unsigned-int bell_duration)
 ;;              (unsigned-long led_mask)
 ;;              (int global_auto_repeat)
 ;;              char auto_repeats[32];
 ;;              )


 (c-structure XTimeCoord
              (Time time)
              (short x)
              (short y))

 (c-structure XModifierKeymap
              (int max_keypermod)
              (KeyCode* modifiermap))


 ;; /*
 ;;  * Display datatype maintaining display specific data.
 ;;  * The contents of this structure are implementation dependent.
 ;;  * A Display should be treated as opaque by application code.
 ;;  */
 ;; #ifndef XLIB_ILLEGAL_ACCESS
 ;; typedef struct _XDisplay Display;
 ;; #endif

 ;; struct _XPrivate;        /* Forward declare before use for C++ */
 ;; struct _XrmHashBucketRec;

 ;; typedef struct 
 ;; #ifdef XLIB_ILLEGAL_ACCESS
 ;; _XDisplay
 ;; #endif
 ;; {
 ;;  XExtData* ext_data; /* hook for extension to hang data */
 ;;  struct _XPrivate *private1;
 ;;  int fd;         /* Network socket. */
 ;;  int private2;
 ;;  int proto_major_version;/* major version of server's X protocol */
 ;;  int proto_minor_version;/* minor version of servers X protocol */
 ;;  char* vendor;       /* vendor of the server hardware */
 ;;         XID private3;
 ;;  XID private4;
 ;;  XID private5;
 ;;  int private6;
 ;;  XID (*resource_alloc)(  /* allocator function */
 ;;      struct _XDisplay*
 ;;  );
 ;;  int byte_order;     /* screen byte order, LSBFirst, MSBFirst */
 ;;  int bitmap_unit;    /* padding and data requirements */
 ;;  int bitmap_pad;     /* padding requirements on bitmaps */
 ;;  int bitmap_bit_order;   /* LeastSignificant or MostSignificant */
 ;;  int nformats;       /* number of pixmap formats in list */
 ;;  ScreenFormat *pixmap_format;    /* pixmap format list */
 ;;  int private8;
 ;;  int release;        /* release of the server */
 ;;  struct _XPrivate *private9, *private10;
 ;;  int qlen;       /* Length of input event queue */
 ;;  unsigned-long last_request_read; /* seq number of last event read */
 ;;  unsigned-long request;  /* sequence number of last request. */
 ;;  XPointer private11;
 ;;  XPointer private12;
 ;;  XPointer private13;
 ;;  XPointer private14;
 ;;  unsigned max_request_size; /* maximum number 32 bit words in request*/
 ;;  struct _XrmHashBucketRec *db;
 ;;  int (*private15)(
 ;;      struct _XDisplay*
 ;;      );
 ;;  char* display_name; /* "host:display" string used on this connect*/
 ;;  int default_screen; /* default screen for operations */
 ;;  int nscreens;       /* number of screens on this server*/
 ;;  Screen* screens;    /* pointer to list of screens */
 ;;  unsigned-long motion_buffer;    /* size of motion buffer */
 ;;  unsigned-long private16;
 ;;  int min_keycode;    /* minimum defined keycode */
 ;;  int max_keycode;    /* maximum defined keycode */
 ;;  XPointer private17;
 ;;  XPointer private18;
 ;;  int private19;
 ;;  char* xdefaults;    /* contents of defaults from server */
 ;;  /* there is more to this structure, but it is private to Xlib */
 ;; }
 ;; #ifdef XLIB_ILLEGAL_ACCESS
 ;; Display, 
 ;; #endif
 ;; *_XPrivDisplay;


 (c-structure XKeyEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (Window root)
              (Window subwindow)
              (Time time)
              (int x)
              (int y)
              (int x_root)
              (int y_root)
              (unsigned-int state)
              (unsigned-int keycode)
              (Bool same_screen))

 ;; typedef XKeyEvent XKeyPressedEvent;
 ;; typedef XKeyEvent XKeyReleasedEvent;

 (c-structure XButtonEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (Window root)
              (Window subwindow)
              (Time time)
              (int x)
              (int y)
              (int x_root)
              (int y_root)
              (unsigned-int state)
              (unsigned-int button)
              (Bool same_screen))

 ;; typedef XButtonEvent XButtonPressedEvent;
 ;; typedef XButtonEvent XButtonReleasedEvent;

 (c-structure XMotionEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (Window root)
              (Window subwindow)
              (Time time)
              (int x)
              (int y)
              (int x_root)
              (int y_root)
              (unsigned-int state)
              (char is_hint)
              (Bool same_screen))

 ;; typedef XMotionEvent XPointerMovedEvent;

 (c-structure XCrossingEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (Window root)
              (Window subwindow)
              (Time time)
              (int x)
              (int y)
              (int x_root)
              (int y_root)
              (int mode)
              (int detail)
              (Bool same_screen)
              (Bool focus)
              (unsigned-int state))

 ;; typedef XCrossingEvent XEnterWindowEvent;
 ;; typedef XCrossingEvent XLeaveWindowEvent;

 (c-structure XFocusChangeEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (int mode)
              (int detail))

 ;; typedef XFocusChangeEvent XFocusInEvent;
 ;; typedef XFocusChangeEvent XFocusOutEvent;

 ;; (c-structure XKeymapEvent 
 ;;              (int type)
 ;;              (unsigned-long serial)
 ;;              (Bool send_event)
 ;;              (Display* display)
 ;;              (Window window)
 ;;              (char key_vector[32]))

 (c-structure XExposeEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (int x)
              (int y)
              (int width)
              (int height)
              (int count))

 (c-structure XGraphicsExposeEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Drawable drawable)
              (int x)
              (int y)
              (int width)
              (int height)
              (int count)
              (int major_code)
              (int minor_code)
              )



 (c-structure XNoExposeEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Drawable drawable)
              (int major_code)
              (int minor_code)
              )



 (c-structure XVisibilityEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (int state)
              )



 (c-structure XCreateWindowEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window parent)
              (Window window)
              (int x)
              (int y)
              (int width)
              (int height)
              (int border_width)
              (Bool override_redirect)
              )



 (c-structure XDestroyWindowEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window event)
              (Window window)
              )



 (c-structure XUnmapEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window event)
              (Window window)
              (Bool from_configure)
              )



 (c-structure XMapEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window event)
              (Window window)
              (Bool override_redirect)
              )



 (c-structure XMapRequestEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window parent)
              (Window window)
              )



 (c-structure XReparentEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window event)
              (Window window)
              (Window parent)
              (int x)
              (int y)
              (Bool override_redirect)
              )



 (c-structure XConfigureEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window event)
              (Window window)
              (int x)
              (int y)
              (int width)
              (int height)
              (int border_width)
              (Window above)
              (Bool override_redirect)
              )



 (c-structure XGravityEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window event)
              (Window window)
              (int x)
              (int y)
              )



 (c-structure XResizeRequestEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (int width)
              (int height)
              )



 (c-structure XConfigureRequestEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window parent)
              (Window window)
              (int x)
              (int y)
              (int width)
              (int height)
              (int border_width)
              (Window above)
              (int detail)
              (unsigned-long value_mask)
              )



 (c-structure XCirculateEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window event)
              (Window window)
              (int place)
              )



 (c-structure XCirculateRequestEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window parent)
              (Window window)
              (int place)
              )



 (c-structure XPropertyEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (Atom atom)
              (Time time)
              (int state)
              )



 (c-structure XSelectionClearEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (Atom selection)
              (Time time)
              )



 (c-structure XSelectionRequestEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window owner)
              (Window requestor)
              (Atom selection)
              (Atom target)
              (Atom property)
              (Time time)
              )



 (c-structure XSelectionEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window requestor)
              (Atom selection)
              (Atom target)
              (Atom property)
              (Time time)
              )



 (c-structure XColormapEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (Colormap colormap)
              (Bool new)
              (int state)
              )



 ;; (c-structure XClientMessageEvent 
 ;; (int type)
 ;; (unsigned-long serial)
 ;; (Bool send_event)
 ;; (Display* display)
 ;; (Window window)
 ;; (Atom message_type)
 ;; (int format)
 ;;  union {
 ;;      char b[20];
 ;;      short s[10];
 ;;      long l[5];
 ;;      ) data;
 ;; } 



 (c-structure XMappingEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              (int request)
              (int first_keycode)
              (int count)
              )



 (c-structure XErrorEvent
              (int type)
              (Display* display)
              (XID resourceid)
              (unsigned-long serial)
              (unsigned-char error_code)
              (unsigned-char request_code)
              (unsigned-char minor_code)
              )



 (c-structure XAnyEvent
              (int type)
              (unsigned-long serial)
              (Bool send_event)
              (Display* display)
              (Window window)
              )

 ;; /*
 ;;  * this union is defined so Xlib can always use the same sized
 ;;  * event structure internally, to avoid memory fragmentation.
 ;;  */
 ;; typedef union _XEvent {
 ;;         int type;        /* must not be changed; first element */
 ;;  XAnyEvent xany;
 ;;  XKeyEvent xkey;
 ;;  XButtonEvent xbutton;
 ;;  XMotionEvent xmotion;
 ;;  XCrossingEvent xcrossing;
 ;;  XFocusChangeEvent xfocus;
 ;;  XExposeEvent xexpose;
 ;;  XGraphicsExposeEvent xgraphicsexpose;
 ;;  XNoExposeEvent xnoexpose;
 ;;  XVisibilityEvent xvisibility;
 ;;  XCreateWindowEvent xcreatewindow;
 ;;  XDestroyWindowEvent xdestroywindow;
 ;;  XUnmapEvent xunmap;
 ;;  XMapEvent xmap;
 ;;  XMapRequestEvent xmaprequest;
 ;;  XReparentEvent xreparent;
 ;;  XConfigureEvent xconfigure;
 ;;  XGravityEvent xgravity;
 ;;  XResizeRequestEvent xresizerequest;
 ;;  XConfigureRequestEvent xconfigurerequest;
 ;;  XCirculateEvent xcirculate;
 ;;  XCirculateRequestEvent xcirculaterequest;
 ;;  XPropertyEvent xproperty;
 ;;  XSelectionClearEvent xselectionclear;
 ;;  XSelectionRequestEvent xselectionrequest;
 ;;  XSelectionEvent xselection;
 ;;  XColormapEvent xcolormap;
 ;;  XClientMessageEvent xclient;
 ;;  XMappingEvent xmapping;
 ;;  XErrorEvent xerror;
 ;;  XKeymapEvent xkeymap;
 ;;  long pad[24];
 ;; } XEvent;
 ;; #endif

 (c-structure XCharStruct
              (short lbearing)
              (short rbearing)
              (short width)
              (short ascent)
              (short descent)
              (unsigned-short attributes)
              )

 (c-structure XFontProp
              (Atom name)
              (unsigned-long card32)
              )



 ;; (c-structure XFontStruct 
 ;;              (XExtData* ext_data)
 ;;              (Font        fid)
 ;;              (unsigned   direction)
 ;;              (unsigned   min_char_or_byte2)
 ;;              (unsigned   max_char_or_byte2)
 ;;              (unsigned   min_byte1)
 ;;              (unsigned   max_byte1)
 ;;              (Bool   all_chars_exist)
 ;;              (unsigned   default_char)
 ;;              (int         n_properties)
 ;;              (XFontProp* properties)
 ;;              (XCharStruct    min_bounds)
 ;;              (XCharStruct    max_bounds)
 ;;              (XCharStruct*      per_char)
 ;;              (int        ascent)
 ;;              (int        descent)
 ;;              )


 (c-structure XTextItem
              (char* chars)
              (int nchars)
              (int delta)
              (Font font)
              )



 (c-structure XChar2b
              (unsigned-char byte1)
              (unsigned-char byte2)
              )



 (c-structure XTextItem16
              (XChar2b* chars)
              (int nchars)
              (int delta)
              (Font font)
              )


 ;; typedef union { Display* display;
 ;;      GC gc;
 ;;      Visual* visual;
 ;;      Screen* screen;
 ;;      ScreenFormat *pixmap_format;
 ;;      XFontStruct *font; } XEDataObject;



 ;; (c-structure XFontSetExtents 
 ;;              (XRectangle      max_ink_extent)
 ;;              (XRectangle      max_logical_extent)
 ;;              )


 ;; typedef struct {
 ;;     char           *chars;
 ;;     int             nchars;
 ;;     int             delta;
 ;;     XFontSet        font_set;
 ;; } XmbTextItem;

 ;; typedef struct {
 ;;     wchar_t        *chars;
 ;;     int             nchars;
 ;;     int             delta;
 ;;     XFontSet        font_set;
 ;; } XwcTextItem;

 ;; #define XNRequiredCharSet "requiredCharSet"
 ;; #define XNQueryOrientation "queryOrientation"
 ;; #define XNBaseFontName "baseFontName"
 ;; #define XNOMAutomatic "omAutomatic"
 ;; #define XNMissingCharSet "missingCharSet"
 ;; #define XNDefaultString "defaultString"
 ;; #define XNOrientation "orientation"
 ;; #define XNDirectionalDependentDrawing "directionalDependentDrawing"
 ;; #define XNContextualDrawing "contextualDrawing"
 ;; #define XNFontInfo "fontInfo"

 ;; typedef struct {
 ;;     int charset_count;
 ;;     char* *charset_list;
 ;; } XOMCharSetList;

 ;; typedef enum {
 ;;     XOMOrientation_LTR_TTB,
 ;;     XOMOrientation_RTL_TTB,
 ;;     XOMOrientation_TTB_LTR,
 ;;     XOMOrientation_TTB_RTL,
 ;;     XOMOrientation_Context
 ;; } XOrientation;

 ;; typedef struct {
 ;;     int num_orientation;
 ;;     XOrientation *orientation;   /* Input Text description */
 ;; } XOMOrientation;

 ;; typedef struct {
 ;;     int num_font;
 ;;     XFontStruct **font_struct_list;
 ;;     char* *font_name_list;
 ;; } XOMFontInfo;

 ;; typedef struct _XIM *XIM;
 ;; typedef struct _XIC *XIC;

 ;; typedef void (*XIMProc)(
 ;;     XIM,
 ;;     XPointer,
 ;;     XPointer
 ;; );

 ;; typedef Bool (*XICProc)(
 ;;     XIC,
 ;;     XPointer,
 ;;     XPointer
 ;; );

 ;; typedef void (*XIDProc)(
 ;;     Display*,
 ;;     XPointer,
 ;;     XPointer
 ;; );

 ;; typedef unsigned-long XIMStyle;

 ;; typedef struct {
 ;;     unsigned-short count_styles;
 ;;     XIMStyle *supported_styles;
 ;; } XIMStyles;


 ;; typedef void *XVaNestedList;

 ;; typedef struct {
 ;;     XPointer client_data;
 ;;     XIMProc callback;
 ;; } XIMCallback;

 ;; typedef struct {
 ;;     XPointer client_data;
 ;;     XICProc callback;
 ;; } XICCallback;

 ;; typedef unsigned-long XIMFeedback;


 ;; typedef struct _XIMText {
 ;;     unsigned-short length;
 ;;     XIMFeedback *feedback;
 ;;     Bool encoding_is_wchar; 
 ;;     union {
 ;;  char* multi_byte;
 ;;  wchar_t *wide_char;
 ;;     } string; 
 ;; } XIMText;

 ;; typedef  unsigned-long    XIMPreeditState;

 ;; #define  XIMPreeditUnKnown   0L
 ;; #define  XIMPreeditEnable    1L
 ;; #define  XIMPreeditDisable   (1L<<1)

 ;; typedef  struct  _XIMPreeditStateNotifyCallbackStruct {
 ;;     XIMPreeditState state;
 ;; } XIMPreeditStateNotifyCallbackStruct;

 ;; typedef  unsigned-long    XIMResetState;

 ;; #define  XIMInitialState     1L
 ;; #define  XIMPreserveState    (1L<<1)

 ;; typedef unsigned-long XIMStringConversionFeedback;


 ;; typedef struct _XIMStringConversionText {
 ;;     unsigned-short length;
 ;;     XIMStringConversionFeedback *feedback;
 ;;     Bool encoding_is_wchar; 
 ;;     union {
 ;;  char* mbs;
 ;;  wchar_t *wcs;
 ;;     } string; 
 ;; } XIMStringConversionText;

 ;; typedef  unsigned-short  XIMStringConversionPosition;

 ;; typedef  unsigned-short  XIMStringConversionType;

 ;; #define  XIMStringConversionBuffer   (0x0001)
 ;; #define  XIMStringConversionLine     (0x0002)
 ;; #define  XIMStringConversionWord     (0x0003)
 ;; #define  XIMStringConversionChar     (0x0004)

 ;; typedef  unsigned-short  XIMStringConversionOperation;

 ;; #define  XIMStringConversionSubstitution (0x0001)
 ;; #define  XIMStringConversionRetrieval    (0x0002)

 ;; typedef enum {
 ;;     XIMForwardChar, XIMBackwardChar,
 ;;     XIMForwardWord, XIMBackwardWord,
 ;;     XIMCaretUp, XIMCaretDown,
 ;;     XIMNextLine, XIMPreviousLine,
 ;;     XIMLineStart, XIMLineEnd, 
 ;;     XIMAbsolutePosition,
 ;;     XIMDontChange
 ;; } XIMCaretDirection;

 ;; typedef struct _XIMStringConversionCallbackStruct {
 ;;     XIMStringConversionPosition position;
 ;;     XIMCaretDirection direction;
 ;;     XIMStringConversionOperation operation;
 ;;     unsigned-short factor;
 ;;     XIMStringConversionText *text;
 ;; } XIMStringConversionCallbackStruct;

 ;; typedef struct _XIMPreeditDrawCallbackStruct {
 ;;     int caret;       /* Cursor offset within pre-edit string */
 ;;     int chg_first;   /* Starting change position */
 ;;     int chg_length;  /* Length of the change in character count */
 ;;     XIMText *text;
 ;; } XIMPreeditDrawCallbackStruct;

 ;; typedef enum {
 ;;     XIMIsInvisible,  /* Disable caret feedback */ 
 ;;     XIMIsPrimary,    /* UI defined caret feedback */
 ;;     XIMIsSecondary   /* UI defined caret feedback */
 ;; } XIMCaretStyle;

 ;; typedef struct _XIMPreeditCaretCallbackStruct {
 ;;     int position;         /* Caret offset within pre-edit string */
 ;;     XIMCaretDirection direction; /* Caret moves direction */
 ;;     XIMCaretStyle style;  /* Feedback of the caret */
 ;; } XIMPreeditCaretCallbackStruct;

 ;; typedef enum {
 ;;     XIMTextType,
 ;;     XIMBitmapType
 ;; } XIMStatusDataType;

 ;; typedef struct _XIMStatusDrawCallbackStruct {
 ;;     XIMStatusDataType type;
 ;;     union {
 ;;  XIMText *text;
 ;;  Pixmap  bitmap;
 ;;     } data;
 ;; } XIMStatusDrawCallbackStruct;

 ;; typedef struct _XIMHotKeyTrigger {
 ;;     KeySym    keysym;
 ;;     int       modifier;
 ;;     int       modifier_mask;
 ;; } XIMHotKeyTrigger;

 ;; typedef struct _XIMHotKeyTriggers {
 ;;     int           num_hot_key;
 ;;     XIMHotKeyTrigger *key;
 ;; } XIMHotKeyTriggers;

 ;; typedef  unsigned-long    XIMHotKeyState;

 ;; #define  XIMHotKeyStateON    (0x0001L)
 ;; #define  XIMHotKeyStateOFF   (0x0002L)

 ;; typedef struct {
 ;;     unsigned-short count_values;
 ;;     char* *supported_values;
 ;; } XIMValuesList;

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; functions
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (c-function XFontStruct*          XLoadQueryFont                    (Display* const-char*))
 (c-function XFontStruct*          XQueryFont                        (Display* XID))
 (c-function XTimeCoord*           XGetMotionEvents                  (Display* Window Time Time int*))
 (c-function XModifierKeymap*      XDeleteModifiermapEntry           (XModifierKeymap* KeyCode int))
 (c-function XModifierKeymap*      XGetModifierMapping               (Display*))
 (c-function XModifierKeymap*      XInsertModifiermapEntry           (XModifierKeymap* KeyCode int))
 (c-function XModifierKeymap*      XNewModifiermap                   (int))
 (c-function XImage*               XCreateImage                      (Display* Visual* unsigned-int int int char* unsigned-int unsigned-int int int))
 (c-function Status                XInitImage                        (XImage*))
 (c-function XImage*               XGetImage                         (Display* Drawable int int unsigned-int unsigned-int unsigned-long int))
 (c-function XImage*               XGetSubImage                      (Display* Drawable int int unsigned-int unsigned-int unsigned-long int XImage* int int))

 (c-function Display*              XOpenDisplay                      (const-char*))
  
 (c-function void                  XrmInitialize                     ())
 (c-function char*                 XFetchBytes                       (Display* int*))
 (c-function char*                 XFetchBuffer                      (Display* int* int))
 (c-function char*                 XGetAtomName                      (Display* Atom))
 (c-function Status                XGetAtomNames                     (Display* Atom* int char**))
 (c-function char*                 XGetDefault                       (Display* const-char* const-char*))
 (c-function char*                 XDisplayName                      (const-char*))
 (c-function char*                 XKeysymToString                   (KeySym))
 (c-function Atom                  XInternAtom                       (Display* const-char* Bool))
 (c-function Status                XInternAtoms                      (Display* char** int Bool Atom*))
 (c-function Colormap              XCopyColormapAndFree              (Display* Colormap))
 (c-function Colormap              XCreateColormap                   (Display* Window Visual* int))
 (c-function Cursor                XCreatePixmapCursor               (Display* Pixmap Pixmap XColor* XColor* unsigned-int unsigned-int))
 (c-function Cursor                XCreateGlyphCursor                (Display* Font Font unsigned-int unsigned-int XColor-const-* XColor-const-*))
 (c-function Cursor                XCreateFontCursor                 (Display* unsigned-int))
 (c-function Font                  XLoadFont                         (Display* const-char*))
 (c-function GC                    XCreateGC                         (Display* Drawable unsigned-long XGCValues*))
 (c-function GContext              XGContextFromGC                   (GC))
 (c-function void                  XFlushGC                          (Display* GC))
 (c-function Pixmap                XCreatePixmap                     (Display* Drawable unsigned-int unsigned-int unsigned-int))
 (c-function Pixmap                XCreateBitmapFromData             (Display* Drawable const-char* unsigned-int unsigned-int))
 (c-function Pixmap                XCreatePixmapFromBitmapData       (Display* Drawable char* unsigned-int unsigned-int unsigned-long unsigned-long unsigned-int))
 (c-function Window                XCreateSimpleWindow               (Display* Window int int unsigned-int unsigned-int unsigned-int unsigned-long unsigned-long))
 (c-function Window                XGetSelectionOwner                (Display* Atom))
 (c-function Window                XCreateWindow                     (Display* Window int int unsigned-int unsigned-int unsigned-int int unsigned-int Visual* unsigned-long XSetWindowAttributes*))
 (c-function Colormap*             XListInstalledColormaps           (Display* Window int*))
 (c-function char**                XListFonts                        (Display* const-char* int int*))
 (c-function char**                XListFontsWithInfo                (Display* const-char* int int* XFontStruct**))
 (c-function char**                XGetFontPath                      (Display* int*))
 (c-function char**                XListExtensions                   (Display* int*))
 (c-function Atom*                 XListProperties                   (Display* Window int*))
 (c-function XHostAddress*         XListHosts                        (Display* int* Bool*))
 (c-function KeySym                XKeycodeToKeysym                  (Display* KeyCode int))
 (c-function KeySym                XLookupKeysym                     (XKeyEvent* int))
 (c-function KeySym*               XGetKeyboardMapping               (Display* KeyCode int int*))
 (c-function KeySym                XStringToKeysym                   (const-char*))
 (c-function long                  XMaxRequestSize                   (Display*))
 (c-function long                  XExtendedMaxRequestSize           (Display*))
 (c-function char*                 XResourceManagerString            (Display*))
 (c-function char*                 XScreenResourceString             (Screen*))
 (c-function unsigned-long         XDisplayMotionBufferSize          (Display*))
 (c-function VisualID              XVisualIDFromVisual               (Visual*))
 (c-function Status                XInitThreads                      ())
 (c-function void                  XLockDisplay                      (Display*))
 (c-function void                  XUnlockDisplay                    (Display*))
 (c-function XExtCodes*            XInitExtension                    (Display* const-char*))
 (c-function XExtCodes*            XAddExtension                     (Display*))
 (c-function XExtData*             XFindOnExtensionList              (XExtData** int))
 ;; (c-function XExtData**            XEHeadOfExtensionList             (XEDataObject))
 (c-function Window                XRootWindow                       (Display* int))
 (c-function Window                XDefaultRootWindow                (Display*))
 (c-function Window                XRootWindowOfScreen               (Screen*))
 (c-function Visual*               XDefaultVisual                    (Display* int))
 (c-function Visual*               XDefaultVisualOfScreen            (Screen*))
 (c-function GC                    XDefaultGC                        (Display* int))
 (c-function GC                    XDefaultGCOfScreen                (Screen*))
 (c-function unsigned-long         XBlackPixel                       (Display* int))
 (c-function unsigned-long         XWhitePixel                       (Display* int))
 (c-function unsigned-long         XAllPlanes                        ())
 (c-function unsigned-long         XBlackPixelOfScreen               (Screen*))
 (c-function unsigned-long         XWhitePixelOfScreen               (Screen*))
 (c-function unsigned-long         XNextRequest                      (Display*))
 (c-function unsigned-long         XLastKnownRequestProcessed        (Display*))
 (c-function char*                 XServerVendor                     (Display*))
 (c-function char*                 XDisplayString                    (Display*))
 (c-function Colormap              XDefaultColormap                  (Display* int))
 (c-function Colormap              XDefaultColormapOfScreen          (Screen*))
 (c-function Display*              XDisplayOfScreen                  (Screen*))
 (c-function Screen*               XScreenOfDisplay                  (Display* int))
 (c-function Screen*               XDefaultScreenOfDisplay           (Display*))
 (c-function long                  XEventMaskOfScreen                (Screen*))
 (c-function int                   XScreenNumberOfScreen             (Screen*))
 ;; (c-function XErrorHandler         XSetErrorHandler                  (XErrorHandler))

 ;; (c-function void*         XSetErrorHandler                  ((c-callback int (Display* XErrorEvent*))))

 (c-function void*         XSetErrorHandler                  ((c-callback int (void* void*))))
 
 ;; (c-function XIOErrorHandler       XSetIOErrorHandler                (XIOErrorHandler))
 (c-function XPixmapFormatValues*  XListPixmapFormats                (Display* int*))
 ;; (c-function int*                  XListDepths                       (Display* int int*))
 (c-function Status                XReconfigureWMWindow              (Display* Window int unsigned-int XWindowChanges*))
 (c-function Status                XGetWMProtocols                   (Display* Window Atom** int*))
 (c-function Status                XSetWMProtocols                   (Display* Window Atom* int))
 (c-function Status                XIconifyWindow                    (Display* Window int))
 (c-function Status                XWithdrawWindow                   (Display* Window int))
 (c-function Status                XGetCommand                       (Display* Window char*** int*))
 (c-function Status                XGetWMColormapWindows             (Display* Window Window** int*))
 (c-function Status                XSetWMColormapWindows             (Display* Window Window* int))
 (c-function void                  XFreeStringList                   (char**))
 (c-function int                   XSetTransientForHint              (Display* Window Window))
 (c-function int                   XActivateScreenSaver              (Display*))
 (c-function int                   XAddHost                          (Display* XHostAddress*))
 (c-function int                   XAddHosts                         (Display* XHostAddress* int))
 ;; (c-function int                   XAddToExtensionList               (struct _XExtData** XExtData*))
 (c-function int                   XAddToSaveSet                     (Display* Window))
 (c-function Status                XAllocColor                       (Display* Colormap XColor*))
 (c-function Status                XAllocColorCells                  (Display* Colormap Bool unsigned-long* unsigned-int unsigned-long* unsigned-int))
 (c-function Status                XAllocColorPlanes                 (Display* Colormap Bool unsigned-long* int int int int unsigned-long* unsigned-long* unsigned-long*))

 (c-function Status                XAllocNamedColor                  (Display* Colormap const-char* XColor* XColor*))

 (c-function int                   XAllowEvents                      (Display* int Time))
 (c-function int                   XAutoRepeatOff                    (Display*))
 (c-function int                   XAutoRepeatOn                     (Display*))
 (c-function int                   XBell                             (Display* int))
 (c-function int                   XBitmapBitOrder                   (Display*))
 (c-function int                   XBitmapPad                        (Display*))
 (c-function int                   XBitmapUnit                       (Display*))
 (c-function int                   XCellsOfScreen                    (Screen*))
 (c-function int                   XChangeActivePointerGrab          (Display* unsigned-int Cursor Time))
 (c-function int                   XChangeGC                         (Display* GC unsigned-long XGCValues*))
 (c-function int                   XChangeKeyboardControl            (Display* unsigned-long XKeyboardControl*))
 (c-function int                   XChangeKeyboardMapping            (Display* int int KeySym* int))
 (c-function int                   XChangePointerControl             (Display* Bool Bool int int int))
 (c-function int                   XChangeProperty                   (Display* Window Atom Atom int int const-unsigned-char* int))
 (c-function int                   XChangeSaveSet                    (Display* Window int))
 (c-function int                   XChangeWindowAttributes           (Display* Window unsigned-long XSetWindowAttributes*))
 ;; (c-function Bool                  XCheckIfEvent                     (Display* XEvent* Bool (*)  (Display* XEvent* XPointer           ) XPointer))
 (c-function Bool                  XCheckMaskEvent                   (Display* long XEvent*))
 (c-function Bool                  XCheckTypedEvent                  (Display* int XEvent*))
 (c-function Bool                  XCheckTypedWindowEvent            (Display* Window int XEvent*))
 (c-function Bool                  XCheckWindowEvent                 (Display* Window long XEvent*))
 (c-function int                   XCirculateSubwindows              (Display* Window int))
 (c-function int                   XCirculateSubwindowsDown          (Display* Window))
 (c-function int                   XCirculateSubwindowsUp            (Display* Window))
 (c-function int                   XClearArea                        (Display* Window int int unsigned-int unsigned-int Bool))
 (c-function int                   XClearWindow                      (Display* Window))
 (c-function int                   XCloseDisplay                     (Display*))
 (c-function int                   XConfigureWindow                  (Display* Window unsigned-int XWindowChanges*))
 (c-function int                   XConnectionNumber                 (Display*))
 (c-function int                   XConvertSelection                 (Display* Atom Atom Atom Window Time))
 (c-function int                   XCopyArea                         (Display* Drawable Drawable GC int int unsigned-int unsigned-int int int))
 (c-function int                   XCopyGC                           (Display* GC unsigned-long GC))
 (c-function int                   XCopyPlane                        (Display* Drawable Drawable GC int int unsigned-int unsigned-int int int unsigned-long))
 (c-function int                   XDefaultDepth                     (Display* int))
 (c-function int                   XDefaultDepthOfScreen             (Screen*))
 (c-function int                   XDefaultScreen                    (Display*))
 (c-function int                   XDefineCursor                     (Display* Window Cursor))
 (c-function int                   XDeleteProperty                   (Display* Window Atom))
 (c-function int                   XDestroyWindow                    (Display* Window))
 (c-function int                   XDestroySubwindows                (Display* Window))
 (c-function int                   XDoesBackingStore                 (Screen*))
 (c-function Bool                  XDoesSaveUnders                   (Screen*))
 (c-function int                   XDisableAccessControl             (Display*))
 (c-function int                   XDisplayCells                     (Display* int))
 (c-function int                   XDisplayHeight                    (Display* int))
 (c-function int                   XDisplayHeightMM                  (Display* int))
 (c-function int                   XDisplayKeycodes                  (Display* int* int*))
 (c-function int                   XDisplayPlanes                    (Display* int))
 (c-function int                   XDisplayWidth                     (Display* int))
 (c-function int                   XDisplayWidthMM                   (Display* int))
 (c-function int                   XDrawArc                          (Display* Drawable GC int int unsigned-int unsigned-int int int))
 (c-function int                   XDrawArcs                         (Display* Drawable GC XArc* int))
 (c-function int                   XDrawImageString                  (Display* Drawable GC int int const-char* int))
 (c-function int                   XDrawImageString16                (Display* Drawable GC int int const-XChar2b* int))
 (c-function int                   XDrawLine                         (Display* Drawable GC int int int int))
 (c-function int                   XDrawLines                        (Display* Drawable GC XPoint* int int))
 (c-function int                   XDrawPoint                        (Display* Drawable GC int int))
 (c-function int                   XDrawPoints                       (Display* Drawable GC XPoint* int int))
 (c-function int                   XDrawRectangle                    (Display* Drawable GC int int unsigned-int unsigned-int))
 (c-function int                   XDrawRectangles                   (Display* Drawable GC XRectangle* int))
 (c-function int                   XDrawSegments                     (Display* Drawable GC XSegment* int))
 (c-function int                   XDrawString                       (Display* Drawable GC int int const-char* int))
 (c-function int                   XDrawString16                     (Display* Drawable GC int int const-XChar2b* int))
 (c-function int                   XDrawText                         (Display* Drawable GC int int XTextItem* int))
 (c-function int                   XDrawText16                       (Display* Drawable GC int int XTextItem16* int))
 (c-function int                   XEnableAccessControl              (Display*))
 (c-function int                   XEventsQueued                     (Display* int))
 (c-function Status                XFetchName                        (Display* Window char**))
 (c-function int                   XFillArc                          (Display* Drawable GC int int unsigned-int unsigned-int int int))
 (c-function int                   XFillArcs                         (Display* Drawable GC XArc* int))
 (c-function int                   XFillPolygon                      (Display* Drawable GC XPoint* int int int))
 (c-function int                   XFillRectangle                    (Display* Drawable GC int int unsigned-int unsigned-int))
 (c-function int                   XFillRectangles                   (Display* Drawable GC XRectangle* int))
 (c-function int                   XFlush                            (Display*))
 (c-function int                   XForceScreenSaver                 (Display* int))
 (c-function int                   XFree                             (void*))
 (c-function int                   XFreeColormap                     (Display* Colormap))
 (c-function int                   XFreeColors                       (Display* Colormap unsigned-long* int unsigned-long))
 (c-function int                   XFreeCursor                       (Display* Cursor))
 (c-function int                   XFreeExtensionList                (char**))
 (c-function int                   XFreeFont                         (Display* XFontStruct*))
 (c-function int                   XFreeFontInfo                     (char** XFontStruct* int))
 (c-function int                   XFreeFontNames                    (char**))
 (c-function int                   XFreeFontPath                     (char**))
 (c-function int                   XFreeGC                           (Display* GC))
 (c-function int                   XFreeModifiermap                  (XModifierKeymap*))
 (c-function int                   XFreePixmap                       (Display* Pixmap))
 (c-function int                   XGeometry                         (Display* int const-char* const-char* unsigned-int unsigned-int unsigned-int int int int* int* int* int*))
 (c-function int                   XGetErrorDatabaseText             (Display* const-char* const-char* const-char* char* int))
 (c-function int                   XGetErrorText                     (Display* int char* int))
 (c-function Bool                  XGetFontProperty                  (XFontStruct* Atom unsigned-long*))
 (c-function Status                XGetGCValues                      (Display* GC unsigned-long XGCValues*))
 (c-function Status                XGetGeometry                      (Display* Drawable Window* int* int* unsigned-int* unsigned-int* unsigned-int* unsigned-int*))
 (c-function Status                XGetIconName                      (Display* Window char**))
 (c-function int                   XGetInputFocus                    (Display* Window* int*))
 (c-function int                   XGetKeyboardControl               (Display* XKeyboardState*))
 (c-function int                   XGetPointerControl                (Display* int* int* int*))
 (c-function int                   XGetPointerMapping                (Display* unsigned-char* int))
 (c-function int                   XGetScreenSaver                   (Display* int* int* int* int*))
 (c-function Status                XGetTransientForHint              (Display* Window Window*))
 (c-function int                   XGetWindowProperty                (Display* Window Atom long long Bool Atom Atom* int* unsigned-long* unsigned-long* unsigned-char**))
 (c-function Status                XGetWindowAttributes              (Display* Window XWindowAttributes*))
 (c-function int                   XGrabButton                       (Display* unsigned-int unsigned-int Window Bool unsigned-int int int Window Cursor))
 (c-function int                   XGrabKey                          (Display* int unsigned-int Window Bool int int))
 (c-function int                   XGrabKeyboard                     (Display* Window Bool int int Time))
 (c-function int                   XGrabPointer                      (Display* Window Bool unsigned-int int int Window Cursor Time))
 (c-function int                   XGrabServer                       (Display*))
 (c-function int                   XHeightMMOfScreen                 (Screen*))
 (c-function int                   XHeightOfScreen                   (Screen*))
 ;;(c-function int                   XIfEvent                          (Display* XEvent* Bool (*)  (Display* XEvent* XPointer ) XPointer))
 (c-function int                   XImageByteOrder                   (Display*))
 (c-function int                   XInstallColormap                  (Display* Colormap))
 (c-function KeyCode               XKeysymToKeycode                  (Display* KeySym))
 (c-function int                   XKillClient                       (Display* XID))
 (c-function Status                XLookupColor                      (Display* Colormap const-char* XColor* XColor*))
 (c-function int                   XLowerWindow                      (Display* Window))
 (c-function int                   XMapRaised                        (Display* Window))
 (c-function int                   XMapSubwindows                    (Display* Window))
 (c-function int                   XMapWindow                        (Display* Window))
 (c-function int                   XMaskEvent                        (Display* long XEvent*))
 (c-function int                   XMaxCmapsOfScreen                 (Screen*))
 (c-function int                   XMinCmapsOfScreen                 (Screen*))
 (c-function int                   XMoveResizeWindow                 (Display* Window int int unsigned-int unsigned-int))
 (c-function int                   XMoveWindow                       (Display* Window int int))
 (c-function int                   XNextEvent                        (Display* XEvent*))
 (c-function int                   XNoOp                             (Display*))
 (c-function Status                XParseColor                       (Display* Colormap const-char* XColor*))
 (c-function int                   XParseGeometry                    (const-char* int* int* unsigned-int* unsigned-int*))
 (c-function int                   XPeekEvent                        (Display* XEvent*))
 ;; (c-function int                   XPeekIfEvent                      (Display* XEvent* Bool (*)  (Display* XEvent* XPointer ) XPointer))
 (c-function int                   XPending                          (Display*))
 (c-function int                   XPlanesOfScreen                   (Screen*))
 (c-function int                   XProtocolRevision                 (Display*))
 (c-function int                   XProtocolVersion                  (Display*))
 (c-function int                   XPutBackEvent                     (Display* XEvent*))
 (c-function int                   XPutImage                         (Display* Drawable GC XImage* int int int int unsigned-int unsigned-int))
 (c-function int                   XQLength                          (Display*))
 (c-function Status                XQueryBestCursor                  (Display* Drawable unsigned-int unsigned-int unsigned-int* unsigned-int*))
 (c-function Status                XQueryBestSize                    (Display* int Drawable unsigned-int unsigned-int unsigned-int* unsigned-int*))
 (c-function Status                XQueryBestStipple                 (Display* Drawable unsigned-int unsigned-int unsigned-int* unsigned-int*))
 (c-function Status                XQueryBestTile                    (Display* Drawable unsigned-int unsigned-int unsigned-int* unsigned-int*))
 (c-function int                   XQueryColor                       (Display* Colormap XColor*))
 (c-function int                   XQueryColors                      (Display* Colormap XColor* int))
 (c-function Bool                  XQueryExtension                   (Display* const-char* int* int* int*))
 ;; (c-function int                   XQueryKeymap                      (Display* char [32]))
 (c-function Bool                  XQueryPointer                     (Display* Window Window* Window* int* int* int* int* unsigned-int*))
 (c-function int                   XQueryTextExtents                 (Display* XID const-char* int int* int* int* XCharStruct*))
 (c-function int                   XQueryTextExtents16               (Display* XID const-XChar2b* int int* int* int* XCharStruct*))
 
 ;; (c-function Status                XQueryTree                        (Display* Window Window* Window* Window** unsigned-int*))

 (c-function Status XQueryTree (void* unsigned-long void* void* void* void*))
 
 (c-function int                   XRaiseWindow                      (Display* Window))
 (c-function int                   XReadBitmapFile                   (Display* Drawable const-char* unsigned-int* unsigned-int* Pixmap* int* int*))
 (c-function int                   XReadBitmapFileData               (const-char* unsigned-int* unsigned-int* unsigned-char** int* int*))
 (c-function int                   XRebindKeysym                     (Display* KeySym KeySym* int const-unsigned-char* int))
 (c-function int                   XRecolorCursor                    (Display* Cursor XColor* XColor*))
 (c-function int                   XRefreshKeyboardMapping           (XMappingEvent*))
 (c-function int                   XRemoveFromSaveSet                (Display* Window))
 (c-function int                   XRemoveHost                       (Display* XHostAddress*))
 (c-function int                   XRemoveHosts                      (Display* XHostAddress* int))
 (c-function int                   XReparentWindow                   (Display* Window Window int int))
 (c-function int                   XResetScreenSaver                 (Display*))
 (c-function int                   XResizeWindow                     (Display* Window unsigned-int unsigned-int))
 (c-function int                   XRestackWindows                   (Display* Window* int))
 (c-function int                   XRotateBuffers                    (Display* int))
 (c-function int                   XRotateWindowProperties           (Display* Window Atom* int int))
 (c-function int                   XScreenCount                      (Display*))
 (c-function int                   XSelectInput                      (Display* Window long))
 (c-function Status                XSendEvent                        (Display* Window Bool long XEvent*))
 (c-function int                   XSetAccessControl                 (Display* int))
 (c-function int                   XSetArcMode                       (Display* GC int))
 (c-function int                   XSetBackground                    (Display* GC unsigned-long))
 (c-function int                   XSetClipMask                      (Display* GC Pixmap))
 (c-function int                   XSetClipOrigin                    (Display* GC int int))
 (c-function int                   XSetClipRectangles                (Display* GC int int XRectangle* int int))
 (c-function int                   XSetCloseDownMode                 (Display* int))
 (c-function int                   XSetCommand                       (Display* Window char** int))
 (c-function int                   XSetDashes                        (Display* GC int const-char* int))
 (c-function int                   XSetFillRule                      (Display* GC int))
 (c-function int                   XSetFillStyle                     (Display* GC int))
 (c-function int                   XSetFont                          (Display* GC Font))
 (c-function int                   XSetFontPath                      (Display* char** int))
 (c-function int                   XSetForeground                    (Display* GC unsigned-long))
 (c-function int                   XSetFunction                      (Display* GC int))
 (c-function int                   XSetGraphicsExposures             (Display* GC Bool))
 (c-function int                   XSetIconName                      (Display* Window const-char*))
 (c-function int                   XSetInputFocus                    (Display* Window int Time))
 (c-function int                   XSetLineAttributes                (Display* GC unsigned-int int int int))
 (c-function int                   XSetModifierMapping               (Display* XModifierKeymap*))
 (c-function int                   XSetPlaneMask                     (Display* GC unsigned-long))
 (c-function int                   XSetPointerMapping                (Display* const-unsigned-char* int))
 (c-function int                   XSetScreenSaver                   (Display* int int int int))
 (c-function int                   XSetSelectionOwner                (Display* Atom Window Time))
 (c-function int                   XSetState                         (Display* GC unsigned-long unsigned-long int unsigned-long))
 (c-function int                   XSetStipple                       (Display* GC Pixmap))
 (c-function int                   XSetSubwindowMode                 (Display* GC int))
 (c-function int                   XSetTSOrigin                      (Display* GC int int))
 (c-function int                   XSetTile                          (Display* GC Pixmap))
 (c-function int                   XSetWindowBackground              (Display* Window unsigned-long))
 (c-function int                   XSetWindowBackgroundPixmap        (Display* Window Pixmap))
 (c-function int                   XSetWindowBorder                  (Display* Window unsigned-long))
 (c-function int                   XSetWindowBorderPixmap            (Display* Window Pixmap))
 (c-function int                   XSetWindowBorderWidth             (Display* Window unsigned-int))
 (c-function int                   XSetWindowColormap                (Display* Window Colormap))
 (c-function int                   XStoreBuffer                      (Display* const-char* int int))
 (c-function int                   XStoreBytes                       (Display* const-char* int))
 (c-function int                   XStoreColor                       (Display* Colormap XColor*))
 (c-function int                   XStoreColors                      (Display* Colormap XColor* int))
 (c-function int                   XStoreName                        (Display* Window const-char*))
 (c-function int                   XStoreNamedColor                  (Display* Colormap const-char* unsigned-long int))
 (c-function int                   XSync                             (Display* Bool))
 (c-function int                   XTextExtents                      (XFontStruct* const-char* int int* int* int* XCharStruct*))
 (c-function int                   XTextExtents16                    (XFontStruct* const-XChar2b* int int* int* int* XCharStruct*))
 (c-function int                   XTextWidth                        (XFontStruct* const-char* int))
 (c-function int                   XTextWidth16                      (XFontStruct* const-XChar2b* int))
 (c-function Bool                  XTranslateCoordinates             (Display* Window Window int int int* int* Window*))
 (c-function int                   XUndefineCursor                   (Display* Window))
 (c-function int                   XUngrabButton                     (Display* unsigned-int unsigned-int Window))
 (c-function int                   XUngrabKey                        (Display* int unsigned-int Window))
 (c-function int                   XUngrabKeyboard                   (Display* Time))
 (c-function int                   XUngrabPointer                    (Display* Time))
 (c-function int                   XUngrabServer                     (Display*))
 (c-function int                   XUninstallColormap                (Display* Colormap))
 (c-function int                   XUnloadFont                       (Display* Font))
 (c-function int                   XUnmapSubwindows                  (Display* Window))
 (c-function int                   XUnmapWindow                      (Display* Window))
 (c-function int                   XVendorRelease                    (Display*))
 (c-function int                   XWarpPointer                      (Display* Window Window int int unsigned-int unsigned-int int int))
 (c-function int                   XWidthMMOfScreen                  (Screen*))
 (c-function int                   XWidthOfScreen                    (Screen*))
 (c-function int                   XWindowEvent                      (Display* Window long XEvent*))
 (c-function int                   XWriteBitmapFile                  (Display* const-char* Pixmap unsigned-int unsigned-int int int))
 (c-function Bool                  XSupportsLocale                   ());
 (c-function char*                 XSetLocaleModifiers               (const-char*))
 ;; (c-function XOM                   XOpenOM                           (Display* struct _XrmHashBucketRec* const-char* const-char*))
 (c-function XFontSet              XCreateFontSet                    (Display* const-char* char*** int* char**))
 (c-function void                  XFreeFontSet                      (Display* XFontSet))
 (c-function int                   XFontsOfFontSet                   (XFontSet XFontStruct*** char***))
 (c-function char*                 XBaseFontNameListOfFontSet        (XFontSet))
 (c-function char*                 XLocaleOfFontSet                  (XFontSet))
 (c-function Bool                  XContextDependentDrawing          (XFontSet))
 (c-function Bool                  XDirectionalDependentDrawing      (XFontSet))
 (c-function Bool                  XContextualDrawing                (XFontSet))
 (c-function XFontSetExtents*      XExtentsOfFontSet                 (XFontSet))
 (c-function int                   XmbTextEscapement                 (XFontSet const-char* int))
 (c-function int                   XwcTextEscapement                 (XFontSet const-wchar_t* int))
 (c-function int                   Xutf8TextEscapement               (XFontSet const-char* int))
 (c-function int                   XmbTextExtents                    (XFontSet const-char* int XRectangle* XRectangle*))
 (c-function int                   XwcTextExtents                    (XFontSet const-wchar_t* int XRectangle* XRectangle*))
 (c-function int                   Xutf8TextExtents                  (XFontSet const-char* int XRectangle* XRectangle*))
 (c-function Status                XmbTextPerCharExtents             (XFontSet const-char* int XRectangle* XRectangle* int int* XRectangle* XRectangle*))
 (c-function Status                XwcTextPerCharExtents             (XFontSet const-wchar_t* int XRectangle* XRectangle* int int* XRectangle* XRectangle*))
 (c-function Status                Xutf8TextPerCharExtents           (XFontSet const-char* int XRectangle* XRectangle* int int* XRectangle* XRectangle*))
 (c-function void                  XmbDrawText                       (Display* Drawable GC int int XmbTextItem* int))
 (c-function void                  XwcDrawText                       (Display* Drawable GC int int XwcTextItem* int))
 (c-function void                  Xutf8DrawText                     (Display* Drawable GC int int XmbTextItem* int))
 (c-function void                  XmbDrawString                     (Display* Drawable XFontSet GC int int const-char* int))
 (c-function void                  XwcDrawString                     (Display* Drawable XFontSet GC int int const-wchar_t* int))
 (c-function void                  Xutf8DrawString                   (Display* Drawable XFontSet GC int int const-char* int))
 (c-function void                  XmbDrawImageString                (Display* Drawable XFontSet GC int int const-char* int))
 (c-function void                  XwcDrawImageString                (Display* Drawable XFontSet GC int int const-wchar_t* int))
 (c-function void                  Xutf8DrawImageString              (Display* Drawable XFontSet GC int int const-char* int))
 ;; (c-function XIM                   XOpenIM                           (Display* struct _XrmHashBucketRec* char* char*))
 (c-function Status                XCloseIM                          (XIM))
 (c-function Display*              XDisplayOfIM                      (XIM))
 (c-function char*                 XLocaleOfIM                       (XIM))
 (c-function void                  XDestroyIC                        (XIC))
 (c-function void                  XSetICFocus                       (XIC))
 (c-function void                  XUnsetICFocus                     (XIC))
 (c-function wchar_t*              XwcResetIC                        (XIC))
 (c-function char*                 XmbResetIC                        (XIC))
 (c-function char*                 Xutf8ResetIC                      (XIC))
 (c-function XIM                   XIMOfIC                           (XIC))
 (c-function Bool                  XFilterEvent                      (XEvent* Window))
 (c-function int                   XmbLookupString                   (XIC XKeyPressedEvent* char* int KeySym* Status*))
 (c-function int                   XwcLookupString                   (XIC XKeyPressedEvent* wchar_t* int KeySym* Status*))
 (c-function int                   Xutf8LookupString                 (XIC XKeyPressedEvent* char* int KeySym* Status*))
 ;; (c-function Bool                  XRegisterIMInstantiateCallback    (Display* struct _XrmHashBucketRec* char* char* XIDProc XPointer))
 ;; (c-function Bool                  XUnregisterIMInstantiateCallback  (Display* struct _XrmHashBucketRec* char* char* XIDProc XPointer))
 (c-function Status                XInternalConnectionNumbers        (Display* int** int*))
 (c-function void                  XProcessInternalConnection        (Display* int))
 ;; (c-function Status                XAddConnectionWatch               (Display* XConnectionWatchProc XPointer))
 ;; (c-function void                  XRemoveConnectionWatch            (Display* XConnectionWatchProc XPointer))
 (c-function void                  XSetAuthorization                 (char*  int char*  int))
 ;; (c-function int                   _Xmbtowc                          (wchar_t*  char*  int))
 ;; (c-function int                   _Xwctomb                          (char*  wchar_t))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; constants
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; Xlib.h
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 (define XlibSpecificationRelease 6)

 (define True 1)
 (define False 0)
 (define QueuedAlready 0)
 (define QueuedAfterReading 1)
 (define QueuedAfterFlush 2)

 ;; #define AllPlanes 		((unsigned long)~0)

 (define XNRequiredCharSet "requiredCharSet")
 (define XNQueryOrientation "queryOrientation")
 (define XNBaseFontName "baseFontName")
 (define XNOMAutomatic "omAutomatic")
 (define XNMissingCharSet "missingCharSet")
 (define XNDefaultString "defaultString")
 (define XNOrientation "orientation")
 (define XNDirectionalDependentDrawing "directionalDependentDrawing")
 (define XNContextualDrawing "contextualDrawing")
 (define XNFontInfo "fontInfo")
 (define XIMPreeditArea		#x0001)
 (define XIMPreeditCallbacks	#x0002)
 (define XIMPreeditPosition	#x0004)
 (define XIMPreeditNothing	#x0008)
 (define XIMPreeditNone		#x0010)
 (define XIMStatusArea		#x0100)
 (define XIMStatusCallbacks	#x0200)
 (define XIMStatusNothing	#x0400)
 (define XIMStatusNone		#x0800)
 (define XNVaNestedList "XNVaNestedList")
 (define XNQueryInputStyle "queryInputStyle")
 (define XNClientWindow "clientWindow")
 (define XNInputStyle "inputStyle")
 (define XNFocusWindow "focusWindow")
 (define XNResourceName "resourceName")
 (define XNResourceClass "resourceClass")
 (define XNGeometryCallback "geometryCallback")
 (define XNDestroyCallback "destroyCallback")
 (define XNFilterEvents "filterEvents")
 (define XNPreeditStartCallback "preeditStartCallback")
 (define XNPreeditDoneCallback "preeditDoneCallback")
 (define XNPreeditDrawCallback "preeditDrawCallback")
 (define XNPreeditCaretCallback "preeditCaretCallback")
 (define XNPreeditStateNotifyCallback "preeditStateNotifyCallback")
 (define XNPreeditAttributes "preeditAttributes")
 (define XNStatusStartCallback "statusStartCallback")
 (define XNStatusDoneCallback "statusDoneCallback")
 (define XNStatusDrawCallback "statusDrawCallback")
 (define XNStatusAttributes "statusAttributes")
 (define XNArea "area")
 (define XNAreaNeeded "areaNeeded")
 (define XNSpotLocation "spotLocation")
 (define XNColormap "colorMap")
 (define XNStdColormap "stdColorMap")
 (define XNForeground "foreground")
 (define XNBackground "background")
 (define XNBackgroundPixmap "backgroundPixmap")
 (define XNFontSet "fontSet")
 (define XNLineSpace "lineSpace")
 (define XNCursor "cursor")
 (define XNQueryIMValuesList "queryIMValuesList")
 (define XNQueryICValuesList "queryICValuesList")
 (define XNVisiblePosition "visiblePosition")
 (define XNR6PreeditCallback "r6PreeditCallback")
 (define XNStringConversionCallback "stringConversionCallback")
 (define XNStringConversion "stringConversion")
 (define XNResetState "resetState")
 (define XNHotKey "hotKey")
 (define XNHotKeyState "hotKeyState")
 (define XNPreeditState "preeditState")
 (define XNSeparatorofNestedList "separatorofNestedList")
 (define XBufferOverflow		-1)
 (define XLookupNone		1)
 (define XLookupChars		2)
 (define XLookupKeySym		3)
 (define XLookupBoth		4)
 (define XIMReverse		1)
 (define XIMUnderline		(expt 2 1))
 (define XIMHighlight		(expt 2 2))
 (define XIMPrimary	 	(expt 2 5))
 (define XIMSecondary		(expt 2 6))
 (define XIMTertiary	 	(expt 2 7))
 (define XIMVisibleToForward 	(expt 2 8))
 (define XIMVisibleToBackword 	(expt 2 9))
 (define XIMVisibleToCenter 	(expt 2 10))
 (define XIMPreeditUnKnown	0)
 (define XIMPreeditEnable	1)
 (define XIMPreeditDisable (expt 2 1))
 (define XIMInitialState  1)
 (define XIMPreserveState (expt 2 1))

 (define XIMStringConversionLeftEdge #x00000001)
 (define XIMStringConversionRightEdge #x00000002)
 (define XIMStringConversionTopEdge #x00000004)
 (define XIMStringConversionBottomEdge #x00000008)
 (define XIMStringConversionConcealed #x00000010)
 (define XIMStringConversionWrapped #x00000020)
 (define XIMStringConversionBuffer #x0001)
 (define XIMStringConversionLine  #x0002)
 (define XIMStringConversionWord  #x0003)
 (define XIMStringConversionChar  #x0004)
 (define XIMStringConversionSubstitution #x0001)
 (define XIMStringConversionRetrieval #x0002)
 (define XIMHotKeyStateON #x0001)
 (define XIMHotKeyStateOFF #x0002)

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; X.h
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 (define X_PROTOCOL                      11)
 (define X_PROTOCOL_REVISION             0)
 (define None                            0)
 (define ParentRelative                  1)
 (define CopyFromParent                  0)
 (define PointerWindow                   0)
 (define InputFocus                      1)
 (define PointerRoot                     1)
 (define AnyPropertyType                 0)
 (define AnyKey                          0)
 (define AnyButton                       0)
 (define AllTemporary                    0)
 (define CurrentTime                     0)
 (define NoSymbol                        0)
 (define NoEventMask                     0)
 (define KeyPressMask                    (expt 2 0))
 (define KeyReleaseMask                  (expt 2 1))
 (define ButtonPressMask                 (expt 2 2))
 (define ButtonReleaseMask               (expt 2 3))
 (define EnterWindowMask                 (expt 2 4))
 (define LeaveWindowMask                 (expt 2 5))
 (define PointerMotionMask               (expt 2 6))
 (define PointerMotionHintMask           (expt 2 7))
 (define Button1MotionMask               (expt 2 8))
 (define Button2MotionMask               (expt 2 9))
 (define Button3MotionMask               (expt 2 10))
 (define Button4MotionMask               (expt 2 11))
 (define Button5MotionMask               (expt 2 12))
 (define ButtonMotionMask                (expt 2 13))
 (define KeymapStateMask                 (expt 2 14))
 (define ExposureMask                    (expt 2 15))
 (define VisibilityChangeMask            (expt 2 16))
 (define StructureNotifyMask             (expt 2 17))
 (define ResizeRedirectMask              (expt 2 18))
 (define SubstructureNotifyMask          (expt 2 19))
 (define SubstructureRedirectMask        (expt 2 20))
 (define FocusChangeMask                 (expt 2 21))
 (define PropertyChangeMask              (expt 2 22))
 (define ColormapChangeMask              (expt 2 23))
 (define OwnerGrabButtonMask             (expt 2 24))
 (define KeyPress                        2)
 (define KeyRelease                      3)
 (define ButtonPress                     4)
 (define ButtonRelease                   5)
 (define MotionNotify                    6)
 (define EnterNotify                     7)
 (define LeaveNotify                     8)
 (define FocusIn                         9)
 (define FocusOut                        10)
 (define KeymapNotify                    11)
 (define Expose                          12)
 (define GraphicsExpose                  13)
 (define NoExpose                        14)
 (define VisibilityNotify                15)
 (define CreateNotify                    16)
 (define DestroyNotify                   17)
 (define UnmapNotify                     18)
 (define MapNotify                       19)
 (define MapRequest                      20)
 (define ReparentNotify                  21)
 (define ConfigureNotify                 22)
 (define ConfigureRequest                23)
 (define GravityNotify                   24)
 (define ResizeRequest                   25)
 (define CirculateNotify                 26)
 (define CirculateRequest                27)
 (define PropertyNotify                  28)
 (define SelectionClear                  29)
 (define SelectionRequest                30)
 (define SelectionNotify                 31)
 (define ColormapNotify                  32)
 (define ClientMessage                   33)
 (define MappingNotify                   34)
 (define LASTEvent                       35)
 (define ShiftMask                       (expt 2 0))
 (define LockMask                        (expt 2 1))
 (define ControlMask                     (expt 2 2))
 (define Mod1Mask                        (expt 2 3))
 (define Mod2Mask                        (expt 2 4))
 (define Mod3Mask                        (expt 2 5))
 (define Mod4Mask                        (expt 2 6))
 (define Mod5Mask                        (expt 2 7))
 (define ShiftMapIndex                   0)
 (define LockMapIndex                    1)
 (define ControlMapIndex                 2)
 (define Mod1MapIndex                    3)
 (define Mod2MapIndex                    4)
 (define Mod3MapIndex                    5)
 (define Mod4MapIndex                    6)
 (define Mod5MapIndex                    7)
 (define Button1Mask                     (expt 2 8))
 (define Button2Mask                     (expt 2 9))
 (define Button3Mask                     (expt 2 10))
 (define Button4Mask                     (expt 2 11))
 (define Button5Mask                     (expt 2 12))
 (define AnyModifier                     (expt 2 15))
 (define Button1                         1)
 (define Button2                         2)
 (define Button3                         3)
 (define Button4                         4)
 (define Button5                         5)
 (define NotifyNormal                    0)
 (define NotifyGrab                      1)
 (define NotifyUngrab                    2)
 (define NotifyWhileGrabbed              3)
 (define NotifyHint                      1)
 (define NotifyAncestor                  0)
 (define NotifyVirtual                   1)
 (define NotifyInferior                  2)
 (define NotifyNonlinear                 3)
 (define NotifyNonlinearVirtual          4)
 (define NotifyPointer                   5)
 (define NotifyPointerRoot               6)
 (define NotifyDetailNone                7)
 (define VisibilityUnobscured            0)
 (define VisibilityPartiallyObscured     1)
 (define VisibilityFullyObscured         2)
 (define PlaceOnTop                      0)
 (define PlaceOnBottom                   1)
 (define FamilyInternet                  0)
 (define FamilyDECnet                    1)
 (define FamilyChaos                     2)
 (define FamilyInternet6                 6)
 (define FamilyServerInterpreted         5)
 (define PropertyNewValue                0)
 (define PropertyDelete                  1)
 (define ColormapUninstalled             0)
 (define ColormapInstalled               1)
 (define GrabModeSync                    0)
 (define GrabModeAsync                   1)
 (define GrabSuccess                     0)
 (define AlreadyGrabbed                  1)
 (define GrabInvalidTime                 2)
 (define GrabNotViewable                 3)
 (define GrabFrozen                      4)
 (define AsyncPointer                    0)
 (define SyncPointer                     1)
 (define ReplayPointer                   2)
 (define AsyncKeyboard                   3)
 (define SyncKeyboard                    4)
 (define ReplayKeyboard                  5)
 (define AsyncBoth                       6)
 (define SyncBoth                        7)
 (define RevertToNone                    None)
 (define RevertToPointerRoot             PointerRoot)
 (define RevertToParent                  2)
 (define Success                         0)
 (define BadRequest                      1)
 (define BadValue                        2)
 (define BadWindow                       3)
 (define BadPixmap                       4)
 (define BadAtom                         5)
 (define BadCursor                       6)
 (define BadFont                         7)
 (define BadMatch                        8)
 (define BadDrawable                     9)
 (define BadAccess                       10)
 (define BadAlloc                        11)
 (define BadColor                        12)
 (define BadGC                           13)
 (define BadIDChoice                     14)
 (define BadName                         15)
 (define BadLength                       16)
 (define BadImplementation               17)
 (define FirstExtensionError             128)
 (define LastExtensionError              255)
 (define InputOutput                     1)
 (define InputOnly                       2)
 (define CWBackPixmap                    (expt 2 0))
 (define CWBackPixel                     (expt 2 1))
 (define CWBorderPixmap                  (expt 2 2))
 (define CWBorderPixel                   (expt 2 3))
 (define CWBitGravity                    (expt 2 4))
 (define CWWinGravity                    (expt 2 5))
 (define CWBackingStore                  (expt 2 6))
 (define CWBackingPlanes                 (expt 2 7))
 (define CWBackingPixel                  (expt 2 8))
 (define CWOverrideRedirect              (expt 2 9))
 (define CWSaveUnder                     (expt 2 10))
 (define CWEventMask                     (expt 2 11))
 (define CWDontPropagate                 (expt 2 12))
 (define CWColormap                      (expt 2 13))
 (define CWCursor                        (expt 2 14))
 (define CWX                             (expt 2 0))
 (define CWY                             (expt 2 1))
 (define CWWidth                         (expt 2 2))
 (define CWHeight                        (expt 2 3))
 (define CWBorderWidth                   (expt 2 4))
 (define CWSibling                       (expt 2 5))
 (define CWStackMode                     (expt 2 6))
 (define ForgetGravity                   0)
 (define NorthWestGravity                1)
 (define NorthGravity                    2)
 (define NorthEastGravity                3)
 (define WestGravity                     4)
 (define CenterGravity                   5)
 (define EastGravity                     6)
 (define SouthWestGravity                7)
 (define SouthGravity                    8)
 (define SouthEastGravity                9)
 (define StaticGravity                   10)
 (define UnmapGravity                    0)
 (define NotUseful                       0)
 (define WhenMapped                      1)
 (define Always                          2)
 (define IsUnmapped                      0)
 (define IsUnviewable                    1)
 (define IsViewable                      2)
 (define SetModeInsert                   0)
 (define SetModeDelete                   1)
 (define DestroyAll                      0)
 (define RetainPermanent                 1)
 (define RetainTemporary                 2)
 (define Above                           0)
 (define Below                           1)
 (define TopIf                           2)
 (define BottomIf                        3)
 (define Opposite                        4)
 (define RaiseLowest                     0)
 (define LowerHighest                    1)
 (define PropModeReplace                 0)
 (define PropModePrepend                 1)
 (define PropModeAppend                  2)
 (define GXclear                         #x0)
 (define GXand                           #x1)
 (define GXandReverse                    #x2)
 (define GXcopy                          #x3)
 (define GXandInverted                   #x4)
 (define GXnoop                          #x5)
 (define GXxor                           #x6)
 (define GXor                            #x7)
 (define GXnor                           #x8)
 (define GXequiv                         #x9)
 (define GXinvert                        #xa)
 (define GXorReverse                     #xb)
 (define GXcopyInverted                  #xc)
 (define GXorInverted                    #xd)
 (define GXnand                          #xe)
 (define GXset                           #xf)
 (define LineSolid                       0)
 (define LineOnOffDash                   1)
 (define LineDoubleDash                  2)
 (define CapNotLast                      0)
 (define CapButt                         1)
 (define CapRound                        2)
 (define CapProjecting                   3)
 (define JoinMiter                       0)
 (define JoinRound                       1)
 (define JoinBevel                       2)
 (define FillSolid                       0)
 (define FillTiled                       1)
 (define FillStippled                    2)
 (define FillOpaqueStippled              3)
 (define EvenOddRule                     0)
 (define WindingRule                     1)
 (define ClipByChildren                  0)
 (define IncludeInferiors                1)
 (define Unsorted                        0)
 (define YSorted                         1)
 (define YXSorted                        2)
 (define YXBanded                        3)
 (define CoordModeOrigin                 0)
 (define CoordModePrevious               1)
 (define Complex                         0)
 (define Nonconvex                       1)
 (define Convex                          2)
 (define ArcChord                        0)
 (define ArcPieSlice                     1)
 (define GCFunction                      (expt 2 0))
 (define GCPlaneMask                     (expt 2 1))
 (define GCForeground                    (expt 2 2))
 (define GCBackground                    (expt 2 3))
 (define GCLineWidth                     (expt 2 4))
 (define GCLineStyle                     (expt 2 5))
 (define GCCapStyle                      (expt 2 6))
 (define GCJoinStyle                     (expt 2 7))
 (define GCFillStyle                     (expt 2 8))
 (define GCFillRule                      (expt 2 9))
 (define GCTile                          (expt 2 10))
 (define GCStipple                       (expt 2 11))
 (define GCTileStipXOrigin               (expt 2 12))
 (define GCTileStipYOrigin               (expt 2 13))
 (define GCFont                          (expt 2 14))
 (define GCSubwindowMode                 (expt 2 15))
 (define GCGraphicsExposures             (expt 2 16))
 (define GCClipXOrigin                   (expt 2 17))
 (define GCClipYOrigin                   (expt 2 18))
 (define GCClipMask                      (expt 2 19))
 (define GCDashOffset                    (expt 2 20))
 (define GCDashList                      (expt 2 21))
 (define GCArcMode                       (expt 2 22))
 (define GCLastBit                       22)
 (define FontLeftToRight                 0)
 (define FontRightToLeft                 1)
 (define FontChange                      255)
 (define XYBitmap                        0)
 (define XYPixmap                        1)
 (define ZPixmap                         2)
 (define AllocNone                       0)
 (define AllocAll                        1)
 (define DoRed                           (expt 2 0))
 (define DoGreen                         (expt 2 1))
 (define DoBlue                          (expt 2 2))
 (define CursorShape                     0)
 (define TileShape                       1)
 (define StippleShape                    2)
 (define AutoRepeatModeOff               0)
 (define AutoRepeatModeOn                1)
 (define AutoRepeatModeDefault           2)
 (define LedModeOff                      0)
 (define LedModeOn                       1)
 (define KBKeyClickPercent               (expt 2 0))
 (define KBBellPercent                   (expt 2 1))
 (define KBBellPitch                     (expt 2 2))
 (define KBBellDuration                  (expt 2 3))
 (define KBLed                           (expt 2 4))
 (define KBLedMode                       (expt 2 5))
 (define KBKey                           (expt 2 6))
 (define KBAutoRepeatMode                (expt 2 7))
 (define MappingSuccess                  0)
 (define MappingBusy                     1)
 (define MappingFailed                   2)
 (define MappingModifier                 0)
 (define MappingKeyboard                 1)
 (define MappingPointer                  2)
 (define DontPreferBlanking              0)
 (define PreferBlanking                  1)
 (define DefaultBlanking                 2)
 (define DisableScreenSaver              0)
 (define DisableScreenInterval           0)
 (define DontAllowExposures              0)
 (define AllowExposures                  1)
 (define DefaultExposures                2)
 (define ScreenSaverReset                0)
 (define ScreenSaverActive               1)
 (define HostInsert                      0)
 (define HostDelete                      1)
 (define EnableAccess                    1)
 (define DisableAccess                   0)
 (define StaticGray                      0)
 (define GrayScale                       1)
 (define StaticColor                     2)
 (define PseudoColor                     3)
 (define TrueColor                       4)
 (define DirectColor                     5)
 (define LSBFirst                        0)
 (define MSBFirst                        1)
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 (define XA_PRIMARY                      1)
 (define XA_SECONDARY                    2)
 (define XA_ARC                          3)
 (define XA_ATOM                         4)
 (define XA_BITMAP                       5)
 (define XA_CARDINAL                     6)
 (define XA_COLORMAP                     7)
 (define XA_CURSOR                       8)
 (define XA_CUT_BUFFER0                  9)
 (define XA_CUT_BUFFER1                  10)
 (define XA_CUT_BUFFER2                  11)
 (define XA_CUT_BUFFER3                  12)
 (define XA_CUT_BUFFER4                  13)
 (define XA_CUT_BUFFER5                  14)
 (define XA_CUT_BUFFER6                  15)
 (define XA_CUT_BUFFER7                  16)
 (define XA_DRAWABLE                     17)
 (define XA_FONT                         18)
 (define XA_INTEGER                      19)
 (define XA_PIXMAP                       20)
 (define XA_POINT                        21)
 (define XA_RECTANGLE                    22)
 (define XA_RESOURCE_MANAGER             23)
 (define XA_RGB_COLOR_MAP                24)
 (define XA_RGB_BEST_MAP                 25)
 (define XA_RGB_BLUE_MAP                 26)
 (define XA_RGB_DEFAULT_MAP              27)
 (define XA_RGB_GRAY_MAP                 28)
 (define XA_RGB_GREEN_MAP                29)
 (define XA_RGB_RED_MAP                  30)
 (define XA_STRING                       31)
 (define XA_VISUALID                     32)
 (define XA_WINDOW                       33)
 (define XA_WM_COMMAND                   34)
 (define XA_WM_HINTS                     35)
 (define XA_WM_CLIENT_MACHINE            36)
 (define XA_WM_ICON_NAME                 37)
 (define XA_WM_ICON_SIZE                 38)
 (define XA_WM_NAME                      39)
 (define XA_WM_NORMAL_HINTS              40)
 (define XA_WM_SIZE_HINTS                41)
 (define XA_WM_ZOOM_HINTS                42)
 (define XA_MIN_SPACE                    43)
 (define XA_NORM_SPACE                   44)
 (define XA_MAX_SPACE                    45)
 (define XA_END_SPACE                    46)
 (define XA_SUPERSCRIPT_X                47)
 (define XA_SUPERSCRIPT_Y                48)
 (define XA_SUBSCRIPT_X                  49)
 (define XA_SUBSCRIPT_Y                  50)
 (define XA_UNDERLINE_POSITION           51)
 (define XA_UNDERLINE_THICKNESS          52)
 (define XA_STRIKEOUT_ASCENT             53)
 (define XA_STRIKEOUT_DESCENT            54)
 (define XA_ITALIC_ANGLE                 55)
 (define XA_X_HEIGHT                     56)
 (define XA_QUAD_WIDTH                   57)
 (define XA_WEIGHT                       58)
 (define XA_POINT_SIZE                   59)
 (define XA_RESOLUTION                   60)
 (define XA_COPYRIGHT                    61)
 (define XA_NOTICE                       62)
 (define XA_FONT_NAME                    63)
 (define XA_FAMILY_NAME                  64)
 (define XA_FULL_NAME                    65)
 (define XA_CAP_HEIGHT                   66)
 (define XA_WM_CLASS                     67)
 (define XA_WM_TRANSIENT_FOR             68)
 (define XA_LAST_PREDEFINED              68)
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; cursorfont.h
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 (define XC_num_glyphs                   154)
 (define XC_X_cursor                     0)
 (define XC_arrow                        2)
 (define XC_based_arrow_down             4)
 (define XC_based_arrow_up               6)
 (define XC_boat                         8)
 (define XC_bogosity                     10)
 (define XC_bottom_left_corner           12)
 (define XC_bottom_right_corner          14)
 (define XC_bottom_side                  16)
 (define XC_bottom_tee                   18)
 (define XC_box_spiral                   20)
 (define XC_center_ptr                   22)
 (define XC_circle                       24)
 (define XC_clock                        26)
 (define XC_coffee_mug                   28)
 (define XC_cross                        30)
 (define XC_cross_reverse                32)
 (define XC_crosshair                    34)
 (define XC_diamond_cross                36)
 (define XC_dot                          38)
 (define XC_dotbox                       40)
 (define XC_double_arrow                 42)
 (define XC_draft_large                  44)
 (define XC_draft_small                  46)
 (define XC_draped_box                   48)
 (define XC_exchange                     50)
 (define XC_fleur                        52)
 (define XC_gobbler                      54)
 (define XC_gumby                        56)
 (define XC_hand1                        58)
 (define XC_hand2                        60)
 (define XC_heart                        62)
 (define XC_icon                         64)
 (define XC_iron_cross                   66)
 (define XC_left_ptr                     68)
 (define XC_left_side                    70)
 (define XC_left_tee                     72)
 (define XC_leftbutton                   74)
 (define XC_ll_angle                     76)
 (define XC_lr_angle                     78)
 (define XC_man                          80)
 (define XC_middlebutton                 82)
 (define XC_mouse                        84)
 (define XC_pencil                       86)
 (define XC_pirate                       88)
 (define XC_plus                         90)
 (define XC_question_arrow               92)
 (define XC_right_ptr                    94)
 (define XC_right_side                   96)
 (define XC_right_tee                    98)
 (define XC_rightbutton                  100)
 (define XC_rtl_logo                     102)
 (define XC_sailboat                     104)
 (define XC_sb_down_arrow                106)
 (define XC_sb_h_double_arrow            108)
 (define XC_sb_left_arrow                110)
 (define XC_sb_right_arrow               112)
 (define XC_sb_up_arrow                  114)
 (define XC_sb_v_double_arrow            116)
 (define XC_shuttle                      118)
 (define XC_sizing                       120)
 (define XC_spider                       122)
 (define XC_spraycan                     124)
 (define XC_star                         126)
 (define XC_target                       128)
 (define XC_tcross                       130)
 (define XC_top_left_arrow               132)
 (define XC_top_left_corner              134)
 (define XC_top_right_corner             136)
 (define XC_top_side                     138)
 (define XC_top_tee                      140)
 (define XC_trek                         142)
 (define XC_ul_angle                     144)
 (define XC_umbrella                     146)
 (define XC_ur_angle                     148)
 (define XC_watch                        150)
 (define XC_xterm                        152)

)