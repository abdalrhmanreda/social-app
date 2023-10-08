import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bulid_edit_and_share_profile_buttons.dart';
import 'bulid_top_part_of_profile.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 50,
          right: MediaQuery.of(context).size.width / 50,
        ),
        child: Column(
          children: [
            buildTopPartOfProfileScreen(context),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Text(
                          '100',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'post',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Text(
                          '265',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'photos',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Text(
                          '265K',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Followers',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Text(
                          '150',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Following',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            buildEditProfileAndShareProfileButtons(context),
          ],
        ),
      ),
    );
  }
}
