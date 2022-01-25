class Festival {
  String name;
  String myanmarMonth;

  String monthStart;
  String monthEnd;

  String startDay;
  String endDay;

  Festival(this.name, this.myanmarMonth, this.monthStart, this.monthEnd, this.startDay, this.endDay);

  static List<Festival> festivals = [
     Festival(
         'Anada Pagoda Festival',
         'ပြာသိုလ်လဆန်း (၁၀) ရက် - ပြာသိုလ်လပြည့်',

         'JAN', 'JAN',
         '9', '24'),

    Festival(
        'Nhtet Pyit Taung Pagoda Festival',
        'တပို့တွဲ လပြည့်နေ့',

        'FEB', 'FEB',
        '11', '11'),

    Festival(
        'Thingyan Water Festival',
        'တန်ခူးလဆန်း (၁၃) ရက် - တန်ခူးလဆုတ် (၁) ရက်',

        'APR', 'APR',
        '13', '16'),

    Festival(
        'Law Ka Nandar Pagoda Festival',
        'ဝါခေါင် လဆန်း (၇) ရက် - ဝါခေါင် လဆန်း (၈) ရက်',

        'AUG', 'AUG',
        '25', '26'),

    Festival(
        'Mya Zedi Pagoda Festival',
        'ဝါခေါင် လဆန်း (၁၄) ရက် - ဝါခေါင် လပြည့်နေ့',

        'SEP', 'SEP',
        '1', '2'),

    Festival(
        'Manuha Pagoda Festival',
        'တော်သလင်း လဆန်း (၁၄) ရက် - တော်သလင်း လပြည့်',

        'SEP', 'OCT',
        '30', '1'),

    Festival(
        'Tadingyut Festival',
        'သီတင်းကျွတ် လဆန်း (၁၄) ရက် - သီတင်းကျွတ် လပြည့်နေ့',

        'OCT', 'OCT',
        '8', '9'),

    Festival(
        'Shwe Zi Gon Pagoda Festival',
        'တန်ဆောင်မုန်း လဆန်း (၁၂) ရက် - တန်ဆောင်မုန်း လပြည့်',

        'NOV', 'NOV',
        '4', '7'),

    Festival(
        'Alo-Daw Pyae Pagoda Festival',
        'နတ်တော် လဆန်း (၁၄) ရက် - နတ်တော် လပြည့်',

        'DEC', 'DEC',
        '28', '29'),
  ];

}