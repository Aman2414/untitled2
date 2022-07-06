import 'package:flutter/material.dart';
import 'package:untitled2/colors.dart';

class UserDetails extends StatefulWidget {
  final bool isVerified;
  final bool isEditable;
  final String name;
  final String phoneNo;
  final String imageUrl;
  final void Function()? onTap;

  const UserDetails({
    Key? key,
    this.isVerified = false,
    this.isEditable = false,
    required this.name,
    required this.phoneNo,
    required this.imageUrl,
    this.onTap,
  }) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                widget.imageUrl,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      widget.isVerified
                          ? CircleAvatar(
                        radius: 6,
                        backgroundColor: CustomColors.primaryColor,
                        child: Icon(
                          Icons.done,
                          size: 8,
                        ),
                      )
                          : SizedBox(),
                    ],
                  ),
                  Text(
                    widget.phoneNo,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
            //  edit icon button
            widget.isEditable
                ? IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
              ),
            )
                : SizedBox(),
          ],
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: Ink(
              child: InkWell(
                onTap: () {},
                child: Expanded(
                  child: Container(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
