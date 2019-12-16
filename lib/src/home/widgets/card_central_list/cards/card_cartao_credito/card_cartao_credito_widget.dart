import 'package:flutter/material.dart';

class CardCartaoCreditoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 2,
        color: Color(0xffFDFFFD),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.credit_card,
                                    size: 30,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Cartão de Crédito",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "FATURA ATUAL",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff00BDC9),
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: 'R\$ ',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff00BDC9).withOpacity(.8),
                                        ),
                                        children: <InlineSpan>[
                                          TextSpan(
                                              text: "1.828",
                                              style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff00BDC9),
                                              )),
                                          TextSpan(
                                            text: ",24",
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff00BDC9).withOpacity(.8),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Limite disponível",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "R\$ 406,34",
                                        style: TextStyle(
                                          color: Color(0xff9DD033),
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: (100 * .5).ceil(),
                              child: Container(
                                width: 8,
                                color: const Color(0xffFD9C00),
                              ),
                            ),
                            Expanded(
                              flex: (100 * .4).ceil(),
                              child: Container(
                                width: 8,
                                color: const Color(0xff00BCC7),
                              ),
                            ),
                            Expanded(
                              flex: (100 * .1).ceil(),
                              child: Container(
                                width: 9,
                                color: const Color(0xff9DD32F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Color(0xffF5F8F5),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.pie_chart_outlined,
                        color: Colors.black38,
                        size: 30,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Compra mais recente em Netflix.Com no valor de R\$ 45,90 quinta',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87),
                        ),
                      )),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black38,
                        size: 30,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
