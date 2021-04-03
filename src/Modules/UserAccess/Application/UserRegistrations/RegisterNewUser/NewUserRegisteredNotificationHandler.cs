using System.Threading;
using System.Threading.Tasks;
using MediatR;

namespace CompanyName.MyMeetings.Modules.UserAccess.Application.UserRegistrations.RegisterNewUser
{
    public class NewUserRegisteredNotificationHandler : INotificationHandler<NewUserRegisteredNotification>
    {
        public async Task Handle(NewUserRegisteredNotification request, CancellationToken cancellationToken)
        {
            // Send email.
        }
    }
}