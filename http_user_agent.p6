sub MAIN($url) {
use HTTP::UserAgent;
my $user-agent = HTTP::UserAgent.new;
$user-agent.timeout = 10;

my $response = $user-agent.get($url);
say $response;

}
