   M S B A M L   `   `   `  ����B  >Orderly, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OrderlyOrderly  5   	       Orderly.MainWindow   5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5	   	   @d2http://schemas.microsoft.com/expression/blend/2008     5
   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Orderly     5   	   -   5          �Name$  _MainWindow��5   	      MaterialDesignBody#���   5   	   
�������$��Medium"�5   	   $��14(�5   	    � Title$  Orderly - Password manager��5   	   $��702.066��6,   $��465.311��6=    � 
ResizeMode$ CanMinimize=�6M    � Icon$ icona1024.png��6�   ��5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .��5      � -   5         �Name$ mainGrid��5      $��Visible=�6   $��0,0,0,-1q�6R   ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.1,0&�63   .��5      �  � Color$ 	#FF275DAD��6   � 5      $ 	#FF00B4D8��6    � Offset$ 1Q�61   5      .+�5   
   � -   5        $ GridRegister��5      $
��Left=�6%   $	��673��6@   $	��Top=�6M   $	��459��6e   .+�5      �� $��Orderly��6   $
��Left=�6&   $��	78,47,0,0q�6A   $	��Top=�6T   $	��115��6l   $	��295��6y   $��Center=�6�   $��Center=�6�   ���	#00000000���	#DDFFFFFF$)��#/Orderly;component/Fonts/#Comfortaa)�6�   $��72(�6*  �� 5      -   5        	 ��Name$	 tbEmailRegistrazione��5        MaterialDesignFilledTextBox#��[ 5      $	��Top=�5      
 �� AcceptsReturn
 .  �� TextWrapping$
 Wrap=�5      $	��400��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email��5      $��78,247,92,0q�68   
�������$��Center=�6`   $��Center=�6�   $)��#/Orderly;component/Fonts/#Comfortaa)�6�   G� 5       -   5         G�Name$ tbPassword1Registrazione��5        # MaterialDesignFilledPasswordBox#��[ 5!      $	��Top=�5"      $ Password��5#      $��78,335,92,0q�6;   
�������$��Center=�6c   $)��#/Orderly;component/Fonts/#Comfortaa)�6�   �� 5$      -   5         ��Name$ btnCancelRegister��5$       " MaterialDesignRaisedDarkButton#��[ 5%      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��5&       � ToolTip$ Cancel register��5'      $��266,486,68,140q�6+   
�������
�������$
��Auto��6�   ��6C   Z� .��5(      �� $��Cancel��5)      $)��#/Orderly;component/Fonts/#Comfortaa)�6#   5*      �� 5+      -   5        $ btnRegisterRegister��5+      #��[ 5,      $ 25��5-      $ Register an account��5.      $��81,486,253,140q�6/   
�������
�������$
��Auto��6�   ��6G   Z� .��5/      �� $��Register��50      $)��#/Orderly;component/Fonts/#Comfortaa)�6%   51      G� 52      -   5        $ tbPassword2Registrazione��52      #��[ 53      $	��Top=�54      $ Repeat Password��55      $��78,416,92,0q�6B   
�������$��Center=�6j   $)��#/Orderly;component/Fonts/#Comfortaa)�6�   � 56      -	   5         �Name$ pbRegistrazione��56       % !MaterialDesignCircularProgressBar#��[ 57       � Value$ 0Q�58       � IsIndeterminate . $��220,544,202,92q�59      $
��Auto��62   $
��Auto��6@   
�������$y�Hidden=�6`   �� 5:      -
   5         ��Name$ tbInfoRegistrazione��5:      $��Center=�65   $��
10,599,0,0q�6R    �� TextAlignment$ Center=�6f   $
��Wrap=�6}   $	��Top=�6�   $��40��6�   $	��302��6�   
�������$)��#/Orderly;component/Fonts/#Comfortaa)�6�   5;      � 5<   
   -   5        $ 	GridLogin��5<      $
��Left=�6"   $	��673��6=   $	��Top=�6J   $	��459��6b   .+�5=      �� $��Orderly��6   $
��Left=�6&   $��	78,47,0,0q�6A   $	��Top=�6T   $	��115��6l   $	��295��6y   $��Center=�6�   $��Center=�6�   ���	#00000000���	#DDFFFFFF$)��#/Orderly;component/Fonts/#Comfortaa)�6�   $��72(�6*  �� 5>      #��[ 5?      $	��Top=�5@      
 . $
 Wrap=�5B      $	��400��5C      $ Email��5D      $��78,247,92,0q�64   
�������$��Center=�6\   $��Center=�6�   $)��#/Orderly;component/Fonts/#Comfortaa)�6�   G� 5E      #��[ 5F      $	��Top=�5G      $ Password��5H      $��78,335,92,0q�67   
�������$��Center=�6_   $)��#/Orderly;component/Fonts/#Comfortaa)�6�   �� 5I      -   5        $ btnLogin��5I      #��[ 5J      $ 25��5K      $ Login��5L      $��164,461,170,165q�6   
�������
�������$
��Auto��6s   ��66   Z� .��5M      �� $��Login��5N      $)��#/Orderly;component/Fonts/#Comfortaa)�6   5O      �� 5P      -   5        $ btnRegister��5P      #��[ 5Q      $ 25��5R      $ Create an account��5S      $��164,539,170,87q�6-   
�������
�������$
��Auto��6�   ��6E   Z� .��5T      �� $��Register��5U      $)��#/Orderly;component/Fonts/#Comfortaa)�6%   5V      5X      �� 5Y   
   -   5        $ 	btnChiudi��5Y      $	��✖��6$   $
��Left=�60   $��
416,0,-6,0q�6K   $	��Top=�6_   $��49��6w   $)��#/Orderly;component/Fonts/#Comfortaa)�6�   $
��Bold"�6�   
���������6�   Z� ��6   Z� �� 5Z   
   -   5        $ btnMinimizza��5Z      $
��Left=�6'   $��	367,0,0,0q�6B   $	��Top=�6U   $��49��6m   $)��#/Orderly;component/Fonts/#Comfortaa)�6x   $
��Bold"�6�   
�������$	��–��6�   ��6�   Z� ��6  Z� �� 5[   
   -   5         ��Name$ 	lbDevText��5[      $��Dev Build 18/08/2021��6#   $
��Left=�6B   $	��Top=�6]   
�������$/��)/Orderly;component/Fonts/#Comfortaa Light)�6�   $��18��6�   $	��165��6�   $��10(�6�   $��Center=�6�   $��
10,655,0,0q�6  5]      5_      