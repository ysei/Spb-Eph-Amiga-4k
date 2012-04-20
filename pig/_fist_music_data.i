;//s Taubern
		RSRESET
c   rs.b 1 ;214
*ch  rs.b 1 ;202
*d   rs.b 1 ;190
*dh  rs.b 1 ;180
*e   rs.b 1 ;170
*f   rs.b 1 ;160
*fh  rs.b 1 ;151
g   rs.b 1 ;143
gh  rs.b 1 ;135
*a   rs.b 1 ;127
ah  rs.b 1 ;120
*b   rs.b 1 ;113

; patterndata
		cnop 0,4
lyd_taubern
		IFNE    song
		dc.b    0*2,1!(1<<1)!(6<<4),5       ; bass
		dc.b    0!(1<<5),c!(0<<3)!(1<<6)
		dc.b    1!(2<<5),c!(1<<3)!(1<<6)
		dc.b    3!(1<<5),c!(0<<3)!(1<<6)
		dc.b    4!(2<<5),c!(0<<3)!(1<<6)
		dc.b    6!(2<<5),c!(0<<3)!(1<<6)

		dc.b    1*2,1!(1<<1)!(3<<4),10 ; akkorder
		dc.b    1!(1<<5),c!(2<<3)!(0<<6)
		dc.b    1!(1<<5),c!(3<<3)!(0<<6)
		dc.b    1!(1<<5),g!(2<<3)!(0<<6)

		dc.b    3!(2<<5),c!(2<<3)!(0<<6)
		dc.b    3!(2<<5),c!(3<<3)!(0<<6)
		dc.b    3!(2<<5),g!(2<<3)!(0<<6)

		dc.b    6!(1<<5),c!(2<<3)!(0<<6)
		dc.b    6!(1<<5),c!(3<<3)!(0<<6)
		dc.b    6!(1<<5),g!(2<<3)!(0<<6)

		dc.b    9!(2<<5),c!(2<<3)!(0<<6)
		dc.b    9!(2<<5),ah!(2<<3)!(0<<6)
		dc.b    9!(2<<5),g!(2<<3)!(0<<6)

		dc.b    12!(1<<5),c!(2<<3)!(0<<6)
		dc.b    12!(1<<5),ah!(2<<3)!(0<<6)
		dc.b    12!(1<<5),g!(2<<3)!(0<<6)

		dc.b    15!(2<<5),c!(2<<3)!(0<<6)
		dc.b    15!(2<<5),ah!(2<<3)!(0<<6)
		dc.b    15!(2<<5),g!(2<<3)!(0<<6)

		dc.b    2*2,0!(2<<1),1  ; hihat og clap
		dc.b              2!(1<<5),(2<<5)!(4)
		dc.b              4!(2<<5),(2<<5)!(2)
		dc.b              6!(1<<5),(2<<5)!(3)
		dc.b              7!(1<<5),(3<<5)!(3)

		dc.b    3*2,1!(0<<1)!(7<<4),22 ; buldring
		dc.b    0!(7<<5),c!(3<<3)!(3<<6)

		; format drum data (variasjon<<5)!(init_frequency)
		dc.b    4*2,0!(0<<1),50 ; basstromme
		dc.b              0!(4<<5),(1<<5)!(1)

		dc.b    5*2,1!(1<<1)!(3<<4),10 ; akkorder2
		dc.b    1!(1<<5),c!(2<<3)!(0<<6)
		dc.b    1!(1<<5),c!(3<<3)!(0<<6)
		dc.b    1!(1<<5),g!(2<<3)!(0<<6)

		dc.b    3!(1<<5),c!(3<<3)!(0<<6)
		dc.b    3!(1<<5),c!(4<<3)!(0<<6)
		dc.b    3!(1<<5),g!(3<<3)!(0<<6)

		dc.b    6!(1<<5),c!(2<<3)!(0<<6)
		dc.b    6!(1<<5),c!(3<<3)!(0<<6)
		dc.b    6!(1<<5),g!(2<<3)!(0<<6)

		dc.b    9!(1<<5),c!(3<<3)!(0<<6)
		dc.b    9!(1<<5),ah!(3<<3)!(0<<6)
		dc.b    9!(1<<5),g!(3<<3)!(0<<6)

*        dc.b    12!(1<<5),c!(2<<3)!(0<<6)
*        dc.b    12!(1<<5),ah!(2<<3)!(0<<6)
*        dc.b    12!(1<<5),g!(2<<3)!(0<<6)
*
*        dc.b    15!(2<<5),c!(2<<3)!(0<<6)
*        dc.b    15!(2<<5),ah!(2<<3)!(0<<6)
*        dc.b    15!(2<<5),g!(2<<3)!(0<<6)


		dc.b    6*2,0!(2<<1),1  ; hihat og clap
		dc.b              2!(1<<5),(2<<5)!(4)
		dc.b              4!(2<<5),(2<<5)!(2)
		dc.b              6!(1<<5),(2<<5)!(3)
		dc.b              7!(1<<5),(3<<5)!(3)
		dc.b              8+2!(1<<5),(2<<5)!(4)
		dc.b              8+4!(2<<5),(2<<5)!(2)
		dc.b              8+6!(1<<5),(2<<5)!(3)
		dc.b              8+7!(1<<5),(3<<5)!(3)

		dc.b    6*2,0!(2<<1),100 ; 2dre hihat
		dc.b              1!(1<<5),(2<<5)!(1)
		dc.b              3!(2<<5),(2<<5)!(2)
		dc.b              5!(3<<5),(2<<5)!(1)
		dc.b              7!(4<<5),(2<<5)!(1)
		dc.b              9!(3<<5),(2<<5)!(2)
		dc.b              11!(2<<5),(4<<5)!(1)
		dc.b              13!(1<<5),(3<<5)!(2)
		dc.b              15!(2<<5),(4<<5)!(1)

		dc.b    7*2,1!(0<<1)!(7<<4),22 ;14 ;30 ;14 ;25 ;14 ;17
		dc.b    16+0!(4<<5),c!(4<<3)!(3<<6)
		dc.b    31

;Global efx
		dc.b  100,16      ; bass
		dc.b  0,4

		dc.b  160,16 ;12 ;16     ; akkorder
		dc.b  3,8 ;16 ;32

		dc.b  120,8      ; hihat, clap
		dc.b  0,4

		dc.b  180,16     ; brumling
		dc.b  1,16 ;32

		dc.b  30,8       ; basstromme
		dc.b  0,2

		dc.b  200,16    ; akkordbreak
		dc.b  3,16

		dc.b  80,8      ; hihat, clap 2
		dc.b  1,8

		dc.b  160,16 ;220,16      ; brekk
		dc.b  1,16 ;32

; phaser anglefrequency
; Pattern sequence
		ENDC

soundaddress
		IFNE song

		dc.b $49,$93 ; intro
		dc.b $49,$73
		dc.b $49,$93
		dc.b $99,$73

		dc.b $49,$09 ; bass inn	(6) (kubetarm)
		dc.b $49,$09
		dc.b $49,$09
		dc.b $99,$09

		dc.b $49,$02 ; hihat inn	(10)
		dc.b $49,$02
		dc.b $49,$02
		dc.b $49,$02

		dc.b $45,$02 ; hihat m buldring
		dc.b $45,$02
		dc.b $45,$02
		dc.b $75,$09

		dc.b $41,$02 ; akkord trommer	(18)
		dc.b $41,$02
		dc.b $41,$02
		dc.b $41,$02

		dc.b $35,$72 ; crazy brekk	(22)

		dc.b $49,$06 ; dobbel hihat	(23)
		dc.b $49,$06
		dc.b $49,$06
		dc.b $49,$06

		dc.b $39,$96 ; brekk igjen	(27)
		dc.b $37,$96 ; brekk igjen

		dc.b $91,$92 ; brekk igjen
		dc.b $91,$92

		dc.b $41,$06 ; akkord og dobbel hihat	(31)
		dc.b $41,$06
		dc.b $41,$06
		dc.b $41,$06
		dc.b $41,$06
		dc.b $41,$06
		dc.b $41,$06
		dc.b $41,$06

;		dc.b $91,$06 ; avslutnings jall		(39)
;		dc.b $91,$06
;		dc.b $91,$39

		dc.b $91,$99	
		dc.b $95,$99
		dc.b $95,$99
		dc.b $95,$99
		dc.b $95,$99
		dc.b $99,$99	(44)	(47)
		ENDC
;//e
;//s Data
;-------------------------------------------------------------
