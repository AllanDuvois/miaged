import '../backend/backend.dart';
import '../detail/detail_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcheterWidget extends StatefulWidget {
  const AcheterWidget({Key key}) : super(key: key);

  @override
  _AcheterWidgetState createState() => _AcheterWidgetState();
}

class _AcheterWidgetState extends State<AcheterWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
          child: Image.network(
            'https://cdn.discordapp.com/attachments/862072797688889354/918808798146215936/unknown.png',
            width: double.infinity,
            height: 100,
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                child: StreamBuilder<List<ListeVetementsRecord>>(
                  stream: queryListeVetementsRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.primaryColor,
                          ),
                        ),
                      );
                    }
                    List<ListeVetementsRecord>
                        listViewListeVetementsRecordList = snapshot.data;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewListeVetementsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewListeVetementsRecord =
                            listViewListeVetementsRecordList[listViewIndex];
                        return Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF5F5F5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    listViewListeVetementsRecord.image,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 30, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Produit : ',
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                ),
                                                Text(
                                                  listViewListeVetementsRecord
                                                      .nom,
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Taille : ',
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                ),
                                                Text(
                                                  listViewListeVetementsRecord
                                                      .taille,
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Prix : ',
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                ),
                                                Text(
                                                  listViewListeVetementsRecord
                                                      .prix
                                                      .toString(),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                ),
                                                Text(
                                                  '€',
                                                  style: FlutterFlowTheme
                                                      .bodyText1,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailWidget(
                                              vetementDetail:
                                                  listViewListeVetementsRecord
                                                      .reference,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
