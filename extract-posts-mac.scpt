FasdUAS 1.101.10   ��   ��    k             l     ��  ��    8 2###[WARNING: USE THIS SCRIPT AT YOUR OWN RISK]####     � 	 	 d # # # [ W A R N I N G :   U S E   T H I S   S C R I P T   A T   Y O U R   O W N   R I S K ] # # # #   
  
 l     ��������  ��  ��        l     ��  ��    � �### Although the script is meant to automate scrolling and fetching the HAR file, it is by no means risk-free as it is not tested on every system. ####     �  . # # #   A l t h o u g h   t h e   s c r i p t   i s   m e a n t   t o   a u t o m a t e   s c r o l l i n g   a n d   f e t c h i n g   t h e   H A R   f i l e ,   i t   i s   b y   n o   m e a n s   r i s k - f r e e   a s   i t   i s   n o t   t e s t e d   o n   e v e r y   s y s t e m .   # # # #      l     ��������  ��  ��        l     ��  ��    { u## Before launching this, you need to ensure that you have Google Chrome and a text editor (e.g., Atom) are installed     �   � # #   B e f o r e   l a u n c h i n g   t h i s ,   y o u   n e e d   t o   e n s u r e   t h a t   y o u   h a v e   G o o g l e   C h r o m e   a n d   a   t e x t   e d i t o r   ( e . g . ,   A t o m )   a r e   i n s t a l l e d      l     ��������  ��  ��        l     ��  ��    o i## You also need to configure the below settings, which includes the list of FB URLs you will be scraping     �   � # #   Y o u   a l s o   n e e d   t o   c o n f i g u r e   t h e   b e l o w   s e t t i n g s ,   w h i c h   i n c l u d e s   t h e   l i s t   o f   F B   U R L s   y o u   w i l l   b e   s c r a p i n g       l     ��������  ��  ��      ! " ! l     �� # $��   # � �## It is recommended that you test it one page and take it from there. Also, you need to be logged into your FB account if your URL is private and not accessible directly (e.g., search URLs require being logged in)    $ � % %� # #   I t   i s   r e c o m m e n d e d   t h a t   y o u   t e s t   i t   o n e   p a g e   a n d   t a k e   i t   f r o m   t h e r e .   A l s o ,   y o u   n e e d   t o   b e   l o g g e d   i n t o   y o u r   F B   a c c o u n t   i f   y o u r   U R L   i s   p r i v a t e   a n d   n o t   a c c e s s i b l e   d i r e c t l y   ( e . g . ,   s e a r c h   U R L s   r e q u i r e   b e i n g   l o g g e d   i n ) "  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   *  [REQUIRED]#    + � , ,  [ R E Q U I R E D ] # )  - . - l     /���� / r      0 1 0 J      2 2  3�� 3 m      4 4 � 5 5  ��   1 o      ���� 0 urls URLs��  ��   .  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   :NHThe above is the list of the URLs on Facebook https://facebook.com that you are trying to extract posts from. It could including pages, groups, searches, etc. examples: https://www.facebook.com/cnn for the CNN page, https://www.facebook.com/search/top?q=crypto for searching for the keyword 'crypto', https://www.facebook.com/groups/565383300477194 for the group with the ID (565383300477194). If using multiple values, use commas to separate them, e.g., {"https://www.facebook.com/cnn","https://www.facebook.com/search/top?q=crypto","https://www.facebook.com/groups/565383300477194"}    ; � < <� T h e   a b o v e   i s   t h e   l i s t   o f   t h e   U R L s   o n   F a c e b o o k   h t t p s : / / f a c e b o o k . c o m   t h a t   y o u   a r e   t r y i n g   t o   e x t r a c t   p o s t s   f r o m .   I t   c o u l d   i n c l u d i n g   p a g e s ,   g r o u p s ,   s e a r c h e s ,   e t c .   e x a m p l e s :   h t t p s : / / w w w . f a c e b o o k . c o m / c n n   f o r   t h e   C N N   p a g e ,   h t t p s : / / w w w . f a c e b o o k . c o m / s e a r c h / t o p ? q = c r y p t o   f o r   s e a r c h i n g   f o r   t h e   k e y w o r d   ' c r y p t o ' ,   h t t p s : / / w w w . f a c e b o o k . c o m / g r o u p s / 5 6 5 3 8 3 3 0 0 4 7 7 1 9 4   f o r   t h e   g r o u p   w i t h   t h e   I D   ( 5 6 5 3 8 3 3 0 0 4 7 7 1 9 4 ) .   I f   u s i n g   m u l t i p l e   v a l u e s ,   u s e   c o m m a s   t o   s e p a r a t e   t h e m ,   e . g . ,   { " h t t p s : / / w w w . f a c e b o o k . c o m / c n n " , " h t t p s : / / w w w . f a c e b o o k . c o m / s e a r c h / t o p ? q = c r y p t o " , " h t t p s : / / w w w . f a c e b o o k . c o m / g r o u p s / 5 6 5 3 8 3 3 0 0 4 7 7 1 9 4 " } 9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A  [OPTIONAL]#    B � C C  [ O P T I O N A L ] # @  D E D l   	 F���� F r    	 G H G m    ���� d H o      ���� 0 
page_flips  ��  ��   E  I J I l     ��������  ��  ��   J  K L K l     �� M N��   MB<How many page flips should the script do. Since each page usually contains fewer than five posts, it is generally useful to have at least 10, which could generate 50 posts or less. There is no maximum number but the more pages you load, the slower the browser will get. It is not recommended to go beyond 1000 flips.    N � O Ox H o w   m a n y   p a g e   f l i p s   s h o u l d   t h e   s c r i p t   d o .   S i n c e   e a c h   p a g e   u s u a l l y   c o n t a i n s   f e w e r   t h a n   f i v e   p o s t s ,   i t   i s   g e n e r a l l y   u s e f u l   t o   h a v e   a t   l e a s t   1 0 ,   w h i c h   c o u l d   g e n e r a t e   5 0   p o s t s   o r   l e s s .   T h e r e   i s   n o   m a x i m u m   n u m b e r   b u t   t h e   m o r e   p a g e s   y o u   l o a d ,   t h e   s l o w e r   t h e   b r o w s e r   w i l l   g e t .   I t   i s   n o t   r e c o m m e n d e d   t o   g o   b e y o n d   1 0 0 0   f l i p s . L  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T  [OPTIONAL]#    U � V V  [ O P T I O N A L ] # S  W X W l     �� Y Z��   Y 1 +The path to the python (v3) executable file    Z � [ [ V T h e   p a t h   t o   t h e   p y t h o n   ( v 3 )   e x e c u t a b l e   f i l e X  \ ] \ l  
  ^���� ^ r   
  _ ` _ m   
  a a � b b  p y t h o n ` o      ���� 0 
pythonpath 
pythonPath��  ��   ]  c d c l     ��������  ��  ��   d  e f e l     �� g h��   g  [OPTIONAL]#    h � i i  [ O P T I O N A L ] # f  j k j l     �� l m��   l ) #The name of the Chrome browser used    m � n n F T h e   n a m e   o f   t h e   C h r o m e   b r o w s e r   u s e d k  o p o l    q���� q r     r s r m     t t � u u  G o o g l e   C h r o m e s o      ���� 0 browsername BrowserName��  ��   p  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z  [OPTIONAL]#    { � | |  [ O P T I O N A L ] # y  } ~ } l     ��  ���    � �The local path to the folder where the HAR file (www.facebook.com.har) will be downloaded (the path must end with /). If blank, it assumes the home user's default downloads folder, which is usually /Users/<username>/Downloads/ .    � � � �� T h e   l o c a l   p a t h   t o   t h e   f o l d e r   w h e r e   t h e   H A R   f i l e   ( w w w . f a c e b o o k . c o m . h a r )   w i l l   b e   d o w n l o a d e d   ( t h e   p a t h   m u s t   e n d   w i t h   / ) .   I f   b l a n k ,   i t   a s s u m e s   t h e   h o m e   u s e r ' s   d e f a u l t   d o w n l o a d s   f o l d e r ,   w h i c h   i s   u s u a l l y   / U s e r s / < u s e r n a m e > / D o w n l o a d s /   . ~  � � � l    ����� � r     � � � m     � � � � �   � o      ����  0 downloadfolder DownloadFolder��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  [OPTIONAL]#    � � � �  [ O P T I O N A L ] # �  � � � l     �� � ���   � c ]Time (in seconds) allowed for each page flip to load (depends on Internet and computer speed)    � � � � � T i m e   ( i n   s e c o n d s )   a l l o w e d   f o r   e a c h   p a g e   f l i p   t o   l o a d   ( d e p e n d s   o n   I n t e r n e t   a n d   c o m p u t e r   s p e e d ) �  � � � l    ����� � r     � � � m    ����  � o      ���� 0 page_loading_time  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � : 4####### Do not touch anythine below this line ######    � � � � h # # # # # # #   D o   n o t   t o u c h   a n y t h i n e   b e l o w   t h i s   l i n e   # # # # # # �  � � � l     ��������  ��  ��   �  � � � l   * ����� � O    * � � � r    ) � � � c    ' � � � n    % � � � m   # %��
�� 
ctnr � l   # ����� � I   #�� ���
�� .earsffdralis        afdr �  f    ��  ��  ��   � m   % &��
�� 
alis � o      ���� 0 
currentdir 
currentDir � m     � ��                                                                                  MACS  alis    ,  HD                             BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  + 4 ����� � r   + 4 � � � n   + 0 � � � 1   , 0��
�� 
psxp � o   + ,���� 0 
currentdir 
currentDir � o      ���� 0 p  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  5 I ����� � O   5 I � � � r   9 H � � � c   9 D � � � n   9 B � � � m   @ B��
�� 
ctnr � l  9 @ ����� � I  9 @�� ���
�� .earsffdralis        afdr � m   9 <��
�� afdrdown��  ��  ��   � m   B C��
�� 
alis � o      ���� 0 homedir homeDir � m   5 6 � ��                                                                                  MACS  alis    ,  HD                             BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  J U ����� � r   J U � � � n   J Q � � � 1   M Q��
�� 
psxp � o   J M���� 0 homedir homeDir � o      ���� 0 p2  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  V ] ����� � r   V ] � � � o   V Y���� 0 p   � o      ���� "0 fbscraperfolder FBScraperFolder��  ��   �  � � � l     ����~��  �  �~   �  � � � l  ^ s ��}�| � Z   ^ s � ��{�z � =   ^ c � � � o   ^ _�y�y  0 downloadfolder DownloadFolder � m   _ b � � � � �   � r   f o � � � b   f m � � � o   f i�x�x 0 p2   � m   i l � � � � �  D o w n l o a d s / � o      �w�w  0 downloadfolder DownloadFolder�{  �z  �}  �|   �  � � � l     �v�u�t�v  �u  �t   �  � � � l     �s�r�q�s  �r  �q   �  ��p � l  t� ��o�n � X   t� ��m � � k   �� � �  � � � l  � ��l � ��l   � 3 -	error number -128	 #(for debugging purposes)    � � � � Z 	 e r r o r   n u m b e r   - 1 2 8 	   # ( f o r   d e b u g g i n g   p u r p o s e s ) �  � � � r   � � � � � m   � ��k�k   � o      �j�j 0 i   �  � � � r   � � �  � [   � � o   � ��i�i 0 i   m   � ��h�h   o      �g�g 0 i   �  r   � � o   � ��f�f 0 u   o      �e�e 0 
currentsrc 
CurrentSrc  O   ��	
	 k   ��  I  � ��d�c�b
�d .aevtrappnull��� ��� null�c  �b    I  � ��a�`�_
�a .miscactvnull��� ��� null�`  �_    I  � ��^�]
�^ .sysodelanull��� ��� nmbr o   � ��\�\ 0 page_loading_time  �]    I  � ��[�Z
�[ .ascrcmnt****      � **** b   � � b   � � o   � ��Y�Y 0 i   m   � � �    o   � ��X�X 0 
currentsrc 
CurrentSrc�Z    I  � ��W�V
�W .GURLGURLnull��� ��� TEXT o   � ��U�U 0 
currentsrc 
CurrentSrc�V     I  � ��T!�S
�T .sysodelanull��� ��� nmbr! m   � ��R�R �S    "#" I  � ��Q$�P
�Q .ascrcmnt****      � ****$ m   � �%% �&& < O p e n   D e v e l o p e r   T o o l s   C o m m a n d   I�P  # '(' O  � �)*) I  � ��O+,
�O .prcskcodnull���     ****+ m   � ��N�N ", �M-�L
�M 
faal- J   � �.. /0/ m   � ��K
�K eMdsKopt0 1�J1 m   � ��I
�I eMdsKcmd�J  �L  * m   � �22�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  ( 343 I  � �H5�G
�H .sysodelanull��� ��� nmbr5 m   � �66 ?�      �G  4 787 I �F9�E
�F .ascrcmnt****      � ****9 m  :: �;; < E x i t   D e v e l o p e r   T o o l s   C o m m a n d   L�E  8 <=< O 	>?> I �D@A
�D .prcskcodnull���     ****@ m  �C�C %A �BB�A
�B 
faalB J  CC D�@D m  �?
�? eMdsKcmd�@  �A  ? m  	EE�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  = FGF I  '�>H�=
�> .sysodelanull��� ��� nmbrH m   #II ?�      �=  G JKJ I (/�<L�;
�< .ascrcmnt****      � ****L m  (+MM �NN > R e f o c u s   o n   W e b   p a g e   C o m m a n d   E S C�;  K OPO O 0>QRQ I 6=�:S�9
�: .prcskcodnull���     ****S m  69�8�8 5�9  R m  03TT�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  P UVU I ?F�7W�6
�7 .sysodelanull��� ��� nmbrW m  ?BXX ?�      �6  V YZY I GN�5[�4
�5 .ascrcmnt****      � ****[ m  GJ\\ �]] 8 H a r d   r e f r e s h   S h i f t   C o m m a n d   R�4  Z ^_^ O Oh`a` I Ug�3bc
�3 .prcskcodnull���     ****b m  UX�2�2 c �1d�0
�1 
faald J  [cee fgf m  [^�/
�/ eMdsKsftg h�.h m  ^a�-
�- eMdsKcmd�.  �0  a m  ORii�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  _ jkj l ii�,�+�*�,  �+  �*  k lml I ip�)n�(
�) .ascrcmnt****      � ****n m  iloo �pp B W a i t   f o r   r e l o a d   ( d e l a y   3 0   s e c o n d s�(  m qrq r  qxsts m  qt�'�' t o      �&�& 0 c  r uvu U  y�wxw k  ��yy z{z I ���%|�$
�% .ascrcmnt****      � ****| b  ��}~} m  �� ���  C o u n t i n g   d o w n  ~ o  ���#�# 0 c  �$  { ��� r  ����� \  ����� o  ���"�" 0 c  � m  ���!�! � o      � �  0 c  � ��� I �����
� .sysodelanull��� ��� nmbr� m  ���� �  �  x m  |�� v ��� I �����
� .ascrcmnt****      � ****� m  ���� ��� < R e s e t   z o o m   t o   n o r m a l   C o m m a n d   0�  � ��� O ����� I �����
� .prcskcodnull���     ****� m  ���� � ���
� 
faal� J  ���� ��� m  ���
� eMdsKcmd�  �  � m  �����                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��� I �����
� .ascrcmnt****      � ****� m  ���� ��� 0 Z o o m   o u t   t o   m i n i m u m   s i z e�  � ��� U  ����� k  ���� ��� O ����� I �����
� .prcskcodnull���     ****� m  ���� � ���
� 
faal� J  ���� ��� m  ���
� eMdsKcmd�  �  � m  �����                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��
� I ���	��
�	 .sysodelanull��� ��� nmbr� m  ���� ?��������  �
  � m  ���� � ��� r  ����� m  ����  � o      �� 0 j  � ��� I ����
� .ascrcmnt****      � ****� m  � �� ��� B S t a r t   f l i p p i n g   p a g e s   C o m m a n d   D o w n�  � ��� U  ���� k  ��� ��� O  ��� I ���
� .prcskcodnull���     ****� m  �� }� � ���
�  
faal� m  ��
�� eMdsKcmd��  � m  ���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��� I !&�����
�� .sysodelanull��� ��� nmbr� o  !"���� 0 page_loading_time  ��  � ��� r  '0��� [  ',��� o  '*���� 0 j  � m  *+���� � o      ���� 0 j  � ��� r  1:��� `  16��� o  14���� 0 j  � m  45���� d� o      ���� 0 pause Pause� ��� Z  ;~������� =  ;@��� o  ;>���� 0 pause Pause� m  >?����  � k  Cz�� ��� I CJ�����
�� .ascrcmnt****      � ****� m  CF�� ��� p T a k e   a   3 0 - s e c   p a u s e   i n   c a s e   t h e   s c r i p t   s h o u l d   b e   s t o p p e d��  � ��� r  KP��� m  KL���� � o      ���� 0 k  � ���� U  Qz��� k  Zu�� ��� I Ze�����
�� .ascrcmnt****      � ****� b  Za��� o  Z]���� 0 k  � m  ]`�� ���  / 3 0��  � ��� r  fo��� [  fk��� o  fi���� 0 k  � m  ij���� � o      ���� 0 k  � ���� I pu�����
�� .sysodelanull��� ��� nmbr� m  pq���� ��  ��  � m  TW���� ��  ��  ��  � ���� I ������
�� .ascrcmnt****      � ****� b  ���� b  ���� b  ���� m  ��� �   
 p a g e  � o  ������ 0 j  � m  �� �  /� o  ������ 0 
page_flips  ��  ��  � o  	���� 0 
page_flips  �  I ������
�� .ascrcmnt****      � **** m  �� � . F i n i s h e d   f l i p p i n g   p a g e s��   	 I ����
��
�� .ascrcmnt****      � ****
 m  �� � Z R e f o c u s   o n   D e v e l o p e r   T o o l s   S h i f t   C o m m a n d   D o w n��  	  O �� I ����
�� .prcskcodnull���     **** m  ������ } ����
�� 
faal J  ��  m  ����
�� eMdsKopt �� m  ����
�� eMdsKcmd��  ��   m  ���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��    I ������
�� .sysodelanull��� ��� nmbr m  ������ ��    I ������
�� .ascrcmnt****      � **** m  �� �   @ S e a r c h   F u n c t i o n s   S h i f t   C o m m a n d   P��   !"! O ��#$# I ����%&
�� .prcskcodnull���     ****% m  ������ #& ��'��
�� 
faal' J  ��(( )*) m  ����
�� eMdsKsft* +��+ m  ����
�� eMdsKcmd��  ��  $ m  ��,,�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  " -.- I ����/��
�� .sysodelanull��� ��� nmbr/ m  ������ ��  . 010 I ����2��
�� .ascrcmnt****      � ****2 m  ��33 �44 > W r i t e   ' N e t w o r k '   a n d   p r e s s   E n t e r��  1 565 O �787 I  ��9��
�� .prcskprsnull���     ctxt9 m   :: �;;  N e t w o r k��  8 m  ��<<�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  6 =>= I 	��?��
�� .sysodelanull��� ��� nmbr? m  	
���� ��  > @A@ O BCB I ��D��
�� .prcskcodnull���     ****D m  ���� $��  C m  EE�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  A FGF I #��H��
�� .sysodelanull��� ��� nmbrH m  ���� ��  G IJI I $+��K��
�� .ascrcmnt****      � ****K m  $'LL �MM : G o   t o   S e a r c h   p r o m p t   C o m m a n d   F��  J NON O ,@PQP I 2?��RS
�� .prcskcodnull���     ****R m  23���� S ��T��
�� 
faalT J  6;UU V��V m  69��
�� eMdsKcmd��  ��  Q m  ,/WW�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  O XYX I AF��Z��
�� .sysodelanull��� ��� nmbrZ m  AB���� ��  Y [\[ I GN��]��
�� .ascrcmnt****      � ****] m  GJ^^ �__ n P r e s s   T A B   ( 4 8 )   1 2   t i m e s   t o   H A R   d o w n l o a d   a n d   p r e s s   E n t e r��  \ `a` U  Osbcb k  Xndd efe O Xfghg I ^e��i��
�� .prcskcodnull���     ****i m  ^a���� 0��  h m  X[jj�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  f k��k I gn��l��
�� .sysodelanull��� ��� nmbrl m  gjmm ?�333333��  ��  c m  RU���� a non O t�pqp I z���r��
�� .prcskcodnull���     ****r m  z}���� $��  q m  twss�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  o tut I ����v��
�� .sysodelanull��� ��� nmbrv m  ��ww ?�      ��  u xyx O ��z{z I ����|��
�� .prcskcodnull���     ****| m  ������ $��  { m  ��}}�                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  y ~~ I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��   ��� I �������
�� .ascrcmnt****      � ****� m  ���� ��� @ R e p l a c e   f i l e   i f   e x i s t s   C o m m a n d   R��  � ��� O ����� I ������
�� .prcskcodnull���     ****� m  ������ � �����
�� 
faal� J  ���� ���� m  ����
�� eMdsKcmd��  ��  � m  �����                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ���� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  ��  
 4   � ����
�� 
capp� o   � ����� 0 browsername BrowserName ��� I �������
�� .ascrcmnt****      � ****� m  ���� ��� x C a l l   p y t h o n   s c r i p t   t o   p a r s e   H A R   f i l e   a n d   c r e a t e   t h e   C S V   f i l e��  � ���� O  ����� k  ���� ��� I ��������
�� .aevtrappnull��� ��� null��  ��  � ��� I ��������
�� .miscactvnull��� ��� null��  ��  � ��� I �����~
� .sysodelanull��� ��� nmbr� m  ���}�} �~  � ��� I ���|��{
�| .ascrcmnt****      � ****� m  ���� ��� D S t a r t   a   n e w   T e r m i n a l   t a b   C o m m a n d   T�{  � ��� O ���� I ��z��
�z .prcskcodnull���     ****� m  ���y�y � �x��w
�x 
faal� J  ��� ��v� m  ��u
�u eMdsKcmd�v  �w  � m  �����                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��� I 	�t��s
�t .sysodelanull��� ��� nmbr� m  	
�r�r �s  � ��� I �q��p
�q .ascrcmnt****      � ****� m  �� ��� @ t o   t o   t h e   P y t h o n   s c r i p t ' s   f o l d e r�p  � ��� O )��� I (�o��n
�o .prcskprsnull���     ctxt� b  $��� m   �� ���  c d  � o   #�m�m "0 fbscraperfolder FBScraperFolder�n  � m  ���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��� O *8��� I 07�l��k
�l .prcskcodnull���     ****� m  03�j�j $�k  � m  *-���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��� I 9@�i��h
�i .sysodelanull��� ��� nmbr� m  9<�� ?�      �h  � ��� I AH�g��f
�g .ascrcmnt****      � ****� m  AD�� ��� J R u n   t h e   p y t h o n   s c r i p t   w i t h   p a r a m e t e r s�f  � ��� O I_��� I O^�e��d
�e .prcskprsnull���     ctxt� b  OZ��� b  OV��� b  OT��� o  OP�c�c 0 
pythonpath 
pythonPath� m  PS�� ���    f b s c r a p e r . p y  � o  TU�b�b  0 downloadfolder DownloadFolder� m  VY�� ��� ( w w w . f a c e b o o k . c o m . h a r�d  � m  IL���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��� I `g�a��`
�a .sysodelanull��� ��� nmbr� m  `c�� ?�      �`  � ��� O hv��� I nu�_��^
�_ .prcskcodnull���     ****� m  nq�]�] $�^  � m  hk���                                                                                  sevs  alis    H  HD                             BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ��  � ��� I w|�\��[
�\ .sysodelanull��� ��� nmbr� m  wx�Z�Z �[  � ��Y� I }��X��W
�X .ascrcmnt****      � ****� m  }��� ��� ( E x t r a c t i o n   c o m p l e t e d�W  �Y  � m  �����                                                                                      @ alis    6  HD                             BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    H D  *System/Applications/Utilities/Terminal.app  / ��  ��  �m 0 u   � o   w x�V�V 0 urls URLs�o  �n  �p       �U���U  � �T
�T .aevtoappnull  �   � ****� �S��R�Q���P
�S .aevtoappnull  �   � ****� k    ���  -��  D��  \��  o    �  �  �  �  �  �  �  �  ��O�O  �R  �Q  � �N�N 0 u  � _ 4�M�L�K a�J t�I ��H�G ��F�E�D�C�B�A�@�?�>�= � ��<�;�:�9�8�7�6�5�4�3�2%2�1�0�/�.�-6:�,M�+\�*�)o�(�'��&��%�$��#��"�!�� ����3:��L^��m������������M 0 urls URLs�L d�K 0 
page_flips  �J 0 
pythonpath 
pythonPath�I 0 browsername BrowserName�H  0 downloadfolder DownloadFolder�G 0 page_loading_time  
�F .earsffdralis        afdr
�E 
ctnr
�D 
alis�C 0 
currentdir 
currentDir
�B 
psxp�A 0 p  
�@ afdrdown�? 0 homedir homeDir�> 0 p2  �= "0 fbscraperfolder FBScraperFolder
�< 
kocl
�; 
cobj
�: .corecnte****       ****�9 0 i  �8 0 
currentsrc 
CurrentSrc
�7 
capp
�6 .aevtrappnull��� ��� null
�5 .miscactvnull��� ��� null
�4 .sysodelanull��� ��� nmbr
�3 .ascrcmnt****      � ****
�2 .GURLGURLnull��� ��� TEXT�1 "
�0 
faal
�/ eMdsKopt
�. eMdsKcmd
�- .prcskcodnull���     ****�, %�+ 5�* 
�) eMdsKsft�( �' 0 c  �& �% �$ �# 0 j  �" }�! 0 pause Pause�  0 k  � � #
� .prcskprsnull���     ctxt� $� � 0� �P��kvE�O�E�O�E�O�E�O�E�OlE�O� )j �,�&E�UO�a ,E` O� a j �,�&E` UO_ a ,E` O_ E` O�a   _ a %E�Y hO�[a a l kh  jE` O_ kE` O�E` O*a �/#*j O*j O�j  O_ a !%_ %j "O_ j #Olj  Oa $j "Oa % a &a 'a (a )lvl *UOa +j  Oa ,j "Oa % a -a 'a )kvl *UOa +j  Oa .j "Oa % 	a /j *UOa +j  Oa 0j "Oa % a 1a 'a 2a )lvl *UOa 3j "Oa 4E` 5O (a 4kha 6_ 5%j "O_ 5kE` 5Okj  [OY��Oa 7j "Oa % a 8a 'a )kvl *UOa 9j "O +a :kha % a ;a 'a )kvl *UOa <j  [OY��OjE` =Oa >j "O ��kha % a ?a 'a )l *UO�j  O_ =kE` =O_ =�#E` @O_ @j  <a Aj "OkE` BO (a 4kh_ Ba C%j "O_ BkE` BOkj  [OY��Y hOa D_ =%a E%�%j "[OY�xOa Fj "Oa Gj "Oa % a ?a 'a (a )lvl *UOa Hj  Oa Ij "Oa % a Ja 'a 2a )lvl *UOa Hj  Oa Kj "Oa % 	a Lj MUOkj  Oa % 	a Nj *UOkj  Oa Oj "Oa % ma 'a )kvl *UOkj  Oa Pj "O #a Qkha % 	a Rj *UOa Sj  [OY��Oa % 	a Nj *UOa +j  Oa % 	a Nj *UOa +j  Oa Tj "Oa % a 1a 'a )kvl *UOa +j  UOa Uj "Oa V �*j O*j Omj  Oa Wj "Oa % a Xa 'a )kvl *UOlj  Oa Yj "Oa % a Z_ %j MUOa % 	a Nj *UOa +j  Oa [j "Oa % �a \%�%a ]%j MUOa +j  Oa % 	a Nj *UOlj  Oa ^j "U[OY�� ascr  ��ޭ