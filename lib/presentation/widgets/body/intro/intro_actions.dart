import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../blocs/home_bloc/home_bloc.dart';
import 'dart:typed_data';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'dart:html' as html;

class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  // downloadFile(url) {
  //   html.AnchorElement(href: url)
  //     ..download = AppAssets.cvDownload // Specify the filename
  //     ..click();
  // }

  Future<void> _downloadAssetPdf(BuildContext context) async {
    // Load asset PDF content using ByteData
    final ByteData data = await rootBundle.load("/images/pujan_cv.pdf");
    final Uint8List assetPdfBytes = data.buffer.asUint8List();

    // Save the asset PDF to a file
    final blob = html.Blob([Uint8List.fromList(assetPdfBytes)]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Create a download link
    html.AnchorElement(href: url)
      ..download = "pujan_cv.pdf"
      ..click();

    // Revoke the object URL after the link is clicked
    html.Url.revokeObjectUrl(url);
  }

  Future<void> _downloadAndShareFile(BuildContext context) async {
    final pdf = pw.Document();
    // var savedFile = await pdf.save();
    // List<int> fileInts = List.from(savedFile);

    // pdf.addPage(
      // pw.Page(
      //   build: (pw.Context context) {
      //     return pw.Center(
      //       child: pw.Text('Hello World!'),
      //     );
      //   },
      // ),
    // );

    final Uint8List fileBytes = await pdf.save();
    final blob = html.Blob([fileBytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    List<int> fileInts = List.from(fileBytes);

    html.AnchorElement(
        href: url)
      ..download = "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(fileInts)}"
      ..setAttribute("download", "${DateTime.now().millisecondsSinceEpoch}.pdf")
      ..click();

    // Revoke the object URL after the link is clicked
    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      CustomButton(
        label: AppStrings.downloadCV,
        icon: Icons.download_for_offline,
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          // context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(1));
          // _downloadAndShareFile(context);
          _downloadAssetPdf(context);
        },
        width: 160,
      ),
      // context.width < DeviceType.ipad.getMaxWidth()
      //     ? const SizedBox(height: 6)
      //     : const SizedBox(width: 32),
      // CustomButton(
      //   label: AppBarHeaders.projects.getString(),
      //   icon: Icons.remove_red_eye,
      //   borderColor: AppColors.primaryColor,
      //   onPressed: () {
      //     context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(2));
      //   },
      //   width: 160,
      // ),
    ];
    return context.width < DeviceType.ipad.getMaxWidth()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actions,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: actions,
          );
  }
}
