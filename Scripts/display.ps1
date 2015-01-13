Add-Type -Language CSharpVersion3 -TypeDefinition @'
using System;
using System.Runtime.InteropServices;

public static class Display
{
  public static void Sleep()
  {
     SendMessage(
       HWND_BROADCAST,
       WM_SYSCOMMAND,
       SC_MONITORPOWER,
       POWER_OFF
     );
  }

  [DllImport("user32.dll", CharSet = CharSet.Auto)]
  static extern IntPtr SendMessage(
    IntPtr hWnd,
    UInt32 Msg,
    IntPtr wParam,
    IntPtr lParam
  );

  static IntPtr HWND_BROADCAST = (IntPtr)0xffff;
  static UInt32 WM_SYSCOMMAND = 0x0112;
  static IntPtr SC_MONITORPOWER = (IntPtr)0xf170;
  static IntPtr POWER_OFF = (IntPtr)0x0002;
}
'@
