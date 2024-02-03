
using System.Collections.Generic;

namespace HairSalon.Models
{
    public class Stylist
    {
        public int StylistId { get; set; }
        public string Name { get; set; }
        public string ImageUrl { get; set; }
        public string Skills { get; set; }
        public List<Client> Clients { get; set; }
    }
}