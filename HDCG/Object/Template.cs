using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HDCGStudio.Object
{
    public class Template
    {
        public int Id { get; set; }

        public string Name { get; set; }
        
        public List<Property> Properties { get; set; }

        public Template()
        {
            Properties = new List<Property>();
        }
    }

    public class Property
    {
        public string Name { get; set; }

        public string Value { get; set; }
    }
}
