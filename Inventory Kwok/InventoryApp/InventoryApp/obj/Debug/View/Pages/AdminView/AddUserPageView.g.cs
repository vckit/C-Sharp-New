#pragma checksum "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "4DCF6BE2E8693AC5A8634DBC600F0798A30CC9C903F110A8799F6C2C6E3054CA"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using InventoryApp.View.Pages.AdminView;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace InventoryApp.View.Pages.AdminView {
    
    
    /// <summary>
    /// AddUserPageView
    /// </summary>
    public partial class AddUserPageView : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 21 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txbUsername;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txbPassword;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cmbRole;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel ListData;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView ListUser;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/InventoryApp;component/view/pages/adminview/adduserpageview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 7 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
            ((InventoryApp.View.Pages.AdminView.AddUserPageView)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.txbUsername = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.txbPassword = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.cmbRole = ((System.Windows.Controls.ComboBox)(target));
            
            #line 25 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
            this.cmbRole.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cmbRole_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            
            #line 30 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.buttonSave_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 32 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.buttonCancelSelected_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.ListData = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 8:
            this.ListUser = ((System.Windows.Controls.ListView)(target));
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 9:
            
            #line 57 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.buttonSelected_Click);
            
            #line default
            #line hidden
            break;
            case 10:
            
            #line 67 "..\..\..\..\..\View\Pages\AdminView\AddUserPageView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.buttonDelete_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

