import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../utils/global.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  final pdf = pw.Document();

  getPDF() async {
    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.all(10),
        build: (context) => pw.Column(
          children: [
            pw.Container(
              alignment: const pw.Alignment(0, 0),
              height: 80,
              width: double.infinity,
              color: PdfColors.grey200,
              child: pw.Row(
                children: [
                  pw.SizedBox(
                    width: 320,
                  ),
                  pw.Text(
                    "TO DO",
                    style: const pw.TextStyle(
                      fontSize: 30,
                      color: PdfColors.black,
                    ),
                  ),
                ],
              ),
            ),
            // pw.Expanded(
            //   flex: 5,
            //   child: pw.Container(
            //     padding: const pw.EdgeInsets.all(30),
            //     child: pw.Column(
            //       children: [
            //         pw.Row(
            //           children: [
            //             pw.Expanded(
            //               flex: 1,
            //               child: pw.Text(
            //                 "Pay To : ",
            //                 style: pw.TextStyle(
            //                     fontSize: 26,
            //                     color: PdfColors.black,
            //                     fontWeight: pw.FontWeight.bold),
            //               ),
            //             ),
            //             pw.Expanded(
            //               flex: 2,
            //               child: pw.Text(
            //                 "JEET PATEL",
            //                 style: const pw.TextStyle(
            //                   fontSize: 26,
            //                   color: PdfColors.grey,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         pw.SizedBox(
            //           height: 8,
            //         ),
            //         pw.Row(
            //           children: [
            //             pw.Expanded(
            //               flex: 1,
            //               child: pw.Text(
            //                 "ACCOUNT NO : ",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.black,
            //                 ),
            //               ),
            //             ),
            //             pw.SizedBox(
            //               height: 8,
            //             ),
            //             pw.Expanded(
            //               flex: 2,
            //               child: pw.Text(
            //                 "0000 0000",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.grey,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         pw.SizedBox(
            //           height: 8,
            //         ),
            //         pw.Row(
            //           children: [
            //             pw.Expanded(
            //               flex: 1,
            //               child: pw.Text(
            //                 "IFSE   : ",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.black,
            //                 ),
            //               ),
            //             ),
            //             pw.Expanded(
            //               flex: 2,
            //               child: pw.Text(
            //                 "000 000",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.grey,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         pw.SizedBox(
            //           height: 8,
            //         ),
            //         pw.Row(
            //           children: [
            //             pw.Expanded(
            //               flex: 1,
            //               child: pw.Text(
            //                 "Bank  : ",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.black,
            //                 ),
            //               ),
            //             ),
            //             pw.Expanded(
            //               flex: 2,
            //               child: pw.Text(
            //                 "RBI",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.grey,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         pw.SizedBox(
            //           height: 8,
            //         ),
            //         pw.Row(
            //           children: [
            //             pw.Expanded(
            //               flex: 1,
            //               child: pw.Text(
            //                 "MOBILE NO :",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.black,
            //                 ),
            //               ),
            //             ),
            //             pw.Expanded(
            //               flex: 2,
            //               child: pw.Text(
            //                 "9876253411",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.grey,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         pw.Row(
            //           children: [
            //             pw.Expanded(
            //               flex: 1,
            //               child: pw.Text(
            //                 "EMAIL :",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.black,
            //                 ),
            //               ),
            //             ),
            //             pw.Expanded(
            //               flex: 2,
            //               child: pw.Text(
            //                 "jeet43@email.com",
            //                 style: const pw.TextStyle(
            //                   fontSize: 22,
            //                   color: PdfColors.grey,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // pw.SizedBox(
            //   height: 8,
            // ),
            // pw.Expanded(
            //   flex: 7,
            //   child: pw.Container(
            //     decoration: const pw.BoxDecoration(
            //       border: pw.Border(
            //         bottom: pw.BorderSide(
            //           color: PdfColors.grey,
            //           width: 1,
            //         ),
            //       ),
            //     ),
            //     child: pw.Column(
            //       mainAxisAlignment: pw.MainAxisAlignment.start,
            //       children: [
            //         pw.Expanded(
            //           flex: 1,
            //           child: pw.Container(
            //             padding: const pw.EdgeInsets.only(
            //               left: 10,
            //               right: 10,
            //             ),
            //             decoration: const pw.BoxDecoration(
            //               border: pw.Border(
            //                 bottom:
            //                     pw.BorderSide(color: PdfColors.grey, width: 1),
            //               ),
            //             ),
            //             child: pw.Row(
            //               mainAxisAlignment: pw.MainAxisAlignment.start,
            //               children: [
            //                 pw.Text(
            //                   "NAME",
            //                   style: pw.TextStyle(
            //                     color: PdfColors.black,
            //                     fontSize: 16,
            //                     fontWeight: pw.FontWeight.bold,
            //                     letterSpacing: 2,
            //                   ),
            //                 ),
            //                 pw.SizedBox(
            //                   width: 200,
            //                 ),
            //                 pw.Text(
            //                   "PRICE",
            //                   style: pw.TextStyle(
            //                     color: PdfColors.black,
            //                     fontSize: 20,
            //                     fontWeight: pw.FontWeight.bold,
            //                     letterSpacing: 2,
            //                   ),
            //                 ),
            //                 pw.SizedBox(
            //                   width: 50,
            //                 ),
            //                 pw.Text(
            //                   "TAX",
            //                   style: pw.TextStyle(
            //                     color: PdfColors.black,
            //                     fontSize: 20,
            //                     fontWeight: pw.FontWeight.bold,
            //                     letterSpacing: 2,
            //                   ),
            //                 ),
            //                 pw.SizedBox(
            //                   width: 50,
            //                 ),
            //                 pw.Text(
            //                   "AMAOUNT",
            //                   style: pw.TextStyle(
            //                     color: PdfColors.black,
            //                     fontSize: 16,
            //                     fontWeight: pw.FontWeight.bold,
            //                     letterSpacing: 2,
            //                   ),
            //                 ),
            //               ],
            //             ),                   ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
// TODO: implement initState
    super.initState();

    getPDF();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PdfPreview(
        build: (context) => pdf.save(),
      ),
    );
  }
}
