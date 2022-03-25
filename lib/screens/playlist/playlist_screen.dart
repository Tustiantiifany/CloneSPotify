import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify/screens/playlist/components/song.dart';

List<String> songs = [
  'Reckless',
  'traitor',
  'Happier',
  'Reckless',
  'traitor',
  'Happier',
  'Reckless',
  'traitor',
  'Happier',
  'Reckless',
  'traitor',
  'Happier',
];
List<String> by = [
  'fany',
  'farhan',
  'aufa',
  'fany',
  'farhan',
  'aufa',
  'fany',
  'farhan',
  'aufa',
  'fany',
  'farhan',
  'aufa',
];

class PlayListScreen extends StatelessWidget {
  const PlayListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [_buildTopSection(), _buildPlayList()],
          ),
        ),
      ),
    );
  }

  Widget _buildTopSection() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 42, 0, 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Your Playlists',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 34),
          ),
          SizedBox(height: 18),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xFF1db954),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 45,
                ),
              ),
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            onPressed: () {},
            child: Text('CREATE'),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayList() {
    return Flexible(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 18),
        itemBuilder: (context, index) {
          return Column(
            children: [
              if (index == 0) SizedBox(height: 50) else SizedBox(),
              Song(
                title: songs[index],
                by: by[index],
              ),
              if (index == songs.length - 1)
                SizedBox(height: 50)
              else
                SizedBox(),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15,
          );
        },
        itemCount: songs.length,
      ),
    );
  }
}
