using System;

namespace CompanyName.MyMeetings.BuildingBlocks.Infrastructure.InternalCommands
{
    //http://disq.us/p/25bye6l
    public class InternalCommand
    {
        public Guid Id { get; set; }

        public string Type { get; set; }

        public string Data { get; set; }

        public DateTime? ProcessedDate { get; set; }
    }
}