﻿using System;
using System.Collections.Generic;

namespace CLK.AspNet.Identity.EntityFramework
{
    public class IdentityPermission<TKey, TPermissionRole> : IPermission<TKey>
        where TPermissionRole : IdentityPermissionRole<TKey>
    {
        // Constructors
        public IdentityPermission()
        {
            // Default
            this.Roles = new List<TPermissionRole>();
        }


        // Properties
        public virtual TKey Id { get; set; }

        public virtual string Name { get; set; }

        public virtual ICollection<TPermissionRole> Roles { get; private set; }        
    }
}