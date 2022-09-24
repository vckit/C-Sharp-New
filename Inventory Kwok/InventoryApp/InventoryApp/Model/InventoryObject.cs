//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace InventoryApp.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class InventoryObject
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public InventoryObject()
        {
            this.CabinetInventoryObject = new HashSet<CabinetInventoryObject>();
            this.History = new HashSet<History>();
            this.InventoryObjectInentoryObjectDetails = new HashSet<InventoryObjectInentoryObjectDetails>();
        }
    
        public int ID { get; set; }
        public string Title { get; set; }
        public string InventoryNumber { get; set; }
        public System.DateTime CommissioningDate { get; set; }
        public string DocumentationPath { get; set; }
        public int IDType { get; set; }
        public int IDSubType { get; set; }
        public int LifeTime { get; set; }
        public int IDInvoce { get; set; }
        public int IDCurrentStatus { get; set; }
        public decimal Amount { get; set; }
        public int IDEmployee { get; set; }
        public int IDInventoryObjectDetail { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CabinetInventoryObject> CabinetInventoryObject { get; set; }
        public virtual CurrentStatus CurrentStatus { get; set; }
        public virtual Employe Employe { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<History> History { get; set; }
        public virtual Invoce Invoce { get; set; }
        public virtual SubType SubType { get; set; }
        public virtual Type Type { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryObjectInentoryObjectDetails> InventoryObjectInentoryObjectDetails { get; set; }
    }
}
