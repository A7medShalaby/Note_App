import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/presentation/style/app_style.dart';

Widget noteCard(
    Function()? onTap, QueryDocumentSnapshot queryDocumentSnapshot) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[queryDocumentSnapshot['color_id']],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            queryDocumentSnapshot["note_title"],
            style: AppStyle.mainTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            queryDocumentSnapshot["creation_date"],
            style: AppStyle.dateTitle,
          ),
          const SizedBox(height: 8),
          Text(
            queryDocumentSnapshot["note_content"],
            style: AppStyle.mainContent,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
