use inc::Module::Install;

RTx 'RT-Extension-AnnounceSimple';
repository 'https://github.com/cloos/RT-Extension-AnnounceSimple';

requires_rt '4.2.0';
rt_too_new '5.2.0';

substitute(
    { RT_LIB_PATH => "$RT::LocalPath/lib " . File::Basename::dirname( $INC{'RT.pm'} ) },
    { sufix => '.in' },
    'xt/lib/RT/Extension/AnnounceSimple/Test.pm',
);

sign;
WriteAll;
