using Autofac;
using CompanyName.MyMeetings.Modules.Meetings.Application.Contracts;
using CompanyName.MyMeetings.Modules.Meetings.Infrastructure;
using CompanyName.MyMeetings.Modules.Meetings.Infrastructure.Configuration;

namespace CompanyName.MyMeetings.API.Modules.Meetings
{
    public class MeetingsAutofacModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<MeetingsModule>()
                .As<IMeetingsModule>()
                .InstancePerLifetimeScope();
            
            builder.RegisterType<MeetingsStartup>()
                .As<IMeetingsStartup>()
                .InstancePerLifetimeScope();
        }
    }
}