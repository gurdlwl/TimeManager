   M S B A M L   `   `   `  ����F  BTimeManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TimeManagerTimeManager  5   	       TimeManager.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:TimeManager     5   	   -   5          � Title$  
MainWindow��5   	   $	��900��6   $
��1400��6)    � WindowState$ 	Maximized=�66    � WindowStyle$
 None=�5	   	    � WindowStartupLocation$ CenterScreen=�6    � 
ResizeMode$ NoResize=�6A   .��5      � -   5         �Name$
 Grid��5       � 	Resources 5   
    �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius��%�   '��       �� 5      " ��6   �5      �� 5       � ��	 5      �� 5      "
 ��6.   .R�5   "   �� $ 15��6)   ���#9EA4FF6R   5      5      5      5      .+�5   
   ]� -   5        $��CustomTitle��5      $	��Top=�6'   .+�5      �� -   5        $��TbCurrentTime��5   4   $��Center=�6I   ���#5E5E5E$��35(�5      $
��Bold"�6&   $��10 ,0 ,0, 0q�68   Current Time6[   �� 5      $��Right=�6    �� Orientation$ 
Horizontal=�66   $��0, 10, 5, 10q�6O   .+�5      �� -   5        $��BtnSet��5   .   $��30��6<   $��30��6G   $��0, 0, 10, 0q�5      $��0q�6.   ���#C8C8C86B   �� 5       -   5        $��BtnMinimize��5    3   $��30��6F   $��30��6Q   $��0, 0, 10, 0q�5!      $��0q�6/   ���#9EA4FF6C   �� 5"      -   5        $��BtnClose��5"   0   $��30��6@   $��30��6K   $��0, 0, 10, 0q�5#      $��0q�6.   ���#FF92926B   5$      5%      �� 5'   
   -   5        $
��Main��5'      $��Center=�6!   .+�5(      �� -	   5        $��
TbTimeFlow��5)      $��Center=�6*   ���#5E5E5E$	��200(�5*      $
��Bold"�6'   $��0, 0, 0, 100q�69   00:00:00:006\   �� 5+      -
   5        $��
TbUserMemo��5+      $��Center=�6*   ���#5E5E5E$	��160(�5,      $
��Bold"�6'   
UserMemo6C   5-      5.      5/      