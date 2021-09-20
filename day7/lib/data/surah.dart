void main() {
  var quran = new HolyQuran();

  print(quran.surah[0]['Ayahs']);
  print(quran.surah[1]['Ayahs']);
}

class HolyQuran {
  var surah = [
    {
      'Surah No': 1,
      'Name': 'Al Fatihah',
      'Ayahs': [
        {
          'ayah no': 1,
          'ayah': 'بِسْمِ اللَّهِ الرَّحْمَـٰنِ الرَّحِيمِ',
          'bangla': 'শুরু করছি আল্লাহর নামে যিনি পরম করুণাময়, অতি দয়ালু।',
          'english': 'In the name of Allah, Most Gracious, Most Merciful.'
        },
        {
          'ayah no': 2,
          'ayah': 'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
          'bangla':
              'যাবতীয় প্রশংসা আল্লাহ তা’আলার যিনি সকল সৃষ্টি জগতের পালনকর্তা।',
          'english':
              'Praise be to Allah, the Cherisher and Sustainer of the worlds.'
        },
        {
          'ayah no': 3,
          'ayah': 'الرَّحْمَـٰنِ الرَّحِيمِ',
          'bangla': 'যিনি নিতান্ত মেহেরবান ও দয়ালু।',
          'english': 'Most Gracious, Most Merciful.'
        },
        {
          'ayah no': 4,
          'ayah': 'مَالِكِ يَوْمِ الدِّينِ',
          'bangla': 'যিনি বিচার দিনের মালিক।',
          'english': 'Master of the Day of Judgment.'
        },
        {
          'ayah no': 5,
          'ayah': 'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
          'bangla':
              'আমরা একমাত্র তোমারই ইবাদত করি এবং শুধুমাত্র তোমারই সাহায্য প্রার্থনা করি।',
          'english': 'Thee do we worship, and Thine aid we seek.'
        },
        {
          'ayah no': 6,
          'ayah': 'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
          'bangla': 'আমাদেরকে সরল পথ দেখাও,',
          'english': 'Show us the straight way.'
        },
        {
          'ayah no': 7,
          'ayah':
              'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
          'bangla':
              'সে সমস্ত লোকের পথ, যাদেরকে তুমি নেয়ামত দান করেছ। তাদের পথ নয়, যাদের প্রতি তোমার গজব নাযিল হয়েছে এবং যারা পথভ্রষ্ট হয়েছে।',
          'english':
              'The way of those on whom Thou hast bestowed Thy Grace, those whose (portion) is not wrath, and who go not astray.'
        },
      ]
    },
    {
      'Surah No': 112,
      'Name': 'Surah Al-Ikhlas',
      'Ayahs': [
        {
          'ayah no': 1,
          'ayah': 'قُلْ هُوَ اللَّهُ أَحَدٌ',
          'bangla': 'বলুন, তিনি আল্লাহ, এক',
          'english': 'Say: He is Allah, the One and Only.'
        },
        {
          'ayah no': 2,
          'ayah': 'اللَّهُ الصَّمَدُ',
          'bangla': 'আল্লাহ অমুখাপেক্ষী',
          'english': 'Allah, the Eternal, Absolute'
        },
        {
          'ayah no': 3,
          'ayah': 'لَمْ يَلِدْ وَلَمْ يُولَدْ',
          'bangla': 'যতিনি কাউকে জন্ম দেননি এবং কেউ তাকে জন্ম দেয়নি',
          'english': 'He begetteth not, nor is He begotten.'
        },
        {
          'ayah no': 4,
          'ayah': 'وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ',
          'bangla': 'এবং তার সমতুল্য কেউ নেই।',
          'english': 'And there is none like unto Him.'
        },
      ]
    },
  ];
}
