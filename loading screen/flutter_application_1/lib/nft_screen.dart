import 'package:flutter/material.dart';

void main() => runApp(NFTAppScreen());

class NFTAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagisea'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Indigo.',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '14:45:28',
              style: TextStyle(fontSize: 12.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Popular Items',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Image.asset('assets/popular_item_image.png'), 
            SizedBox(height: 8.0),
            Text('Discover your own rare NFT'),
            SizedBox(height: 24.0),
            _buildTrendingCreatorSection(),
            SizedBox(height: 24.0),
            _buildOwnedBySection(),
            SizedBox(height: 24.0),
            _buildOtherCreatorsSection('Malcolm Function'),
            SizedBox(height: 24.0),
            _buildOtherCreatorsSection('Will Barrow'),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingCreatorSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trending Creator',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text('Eleanor Fant'),
        Text('6.34 ETH'),
        ElevatedButton(
          onPressed: () {
            // Action when See More button is clicked
          },
          child: Text('See More'),
        ),
      ],
    );
  }

  Widget _buildOwnedBySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Owned by: Fig Nelson',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Text('NFT: United Cubes #3721'),
        Text('Current Bid: 18.42 ETH'),
        ElevatedButton(
          onPressed: () {
            // Action when PLACE A BID button is clicked
          },
          child: Text('PLACE A BID'),
        ),
      ],
    );
  }

  Widget _buildOtherCreatorsSection(String creatorName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Other Creators',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(creatorName),
        Text('NFT: Crypto Raptors'),
        Text('Current Bid: 128 ETH'),
      ],
    );
  }
}













