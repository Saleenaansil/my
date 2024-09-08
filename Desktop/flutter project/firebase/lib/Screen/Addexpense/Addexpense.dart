import 'package:firebase/Services/databaseservies.dart';
import 'package:firebase/controllers/appcontroller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:firebase/Core/Colors.dart';
import 'package:firebase/Screen/widgets/customtext.dart';
import 'package:intl/intl.dart';

class Addexpense extends StatelessWidget {
  Addexpense({super.key});
  final List<String> expenseCategories = ["Food", "Dress", "Hospital"];
  final List<String> incomeCategories = ["Salary", "Rent", "bank"];
  ValueNotifier isIncomeSelectedNotifier = ValueNotifier(true);
  final List<String> incomeAndExpense = ["Income", "Expense"];
  Appcontroller appcontroller = Get.put(Appcontroller());
  TextEditingController amountcontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  String categoryName = "Salary";
  String incomeOrExpense = "Income";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              height: 287,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff69AEA9),
                    Color(0xff3F8782),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("asset/svg/Addexpense/backarrow.svg"),
                        Customtext(
                            text: "Income or Expense",
                            textfontSize: 18,
                            textcolor: Colors.white,
                            textfontweight: FontWeight.w600),
                        SvgPicture.asset("asset/svg/Homepageimages/menu.svg"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 165,
          left: 28,
          right: 28,
          child: Container(
            height: 500,
            width: 358,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Customtext(
                      text: "Expense/Income",
                      textfontSize: 12,
                      textcolor: Color.fromARGB(255, 175, 134, 134),
                      textfontweight: FontWeight.w500),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.4, color: mainAppColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: DropdownButtonFormField(
                          value: incomeOrExpense,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          items: incomeAndExpense.map((Category) {
                            return DropdownMenuItem(
                              value: Category,
                              child: Row(
                                children: [
                                  CircleAvatar(),
                                  Customtext(
                                    text: "${Category}",
                                    textfontSize: 14,
                                    textcolor: Color(0xff666666),
                                    textfontweight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            incomeOrExpense = newValue ?? "";
                            if (incomeOrExpense == "Income") {
                              isIncomeSelectedNotifier.value = true;
                            } else {
                              isIncomeSelectedNotifier.value = false;
                            }
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Customtext(
                      text: "Category",
                      textfontSize: 12,
                      textcolor: Color.fromARGB(255, 175, 134, 134),
                      textfontweight: FontWeight.w500),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.4, color: mainAppColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ValueListenableBuilder(
                            valueListenable: isIncomeSelectedNotifier,
                            builder: (context, isIncomeSelected, _) {
                              List<String> categories = [];
                              if (isIncomeSelected) {
                                categoryName = "Salary";
                                categories = incomeCategories;
                              } else {
                                categoryName = "Food";
                                categories = expenseCategories;
                              }

                              return DropdownButtonFormField(
                                  value: categoryName,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  items: categories.map((Category) {
                                    print(Category);
                                    return DropdownMenuItem(
                                      value: Category,
                                      child: Row(
                                        children: [
                                          CircleAvatar(),
                                          Customtext(
                                            text: "${Category}",
                                            textfontSize: 14,
                                            textcolor: Color(0xff666666),
                                            textfontweight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    categoryName = newValue ?? "";
                                  });
                            })
                        // child: Obx(() {
                        //   List<String> categories = [];
                        //   if (appcontroller.isSelectedIncome.value) {
                        //     categories = incomeCategories;
                        //   } else {
                        //     categories = expenseCategories;
                        //   }
                        //   return DropdownButtonFormField(
                        //       value: categoryName,
                        //       decoration: InputDecoration(
                        //         border: InputBorder.none,
                        //       ),
                        //       items: categories.map((Category) {
                        //         print(Category);
                        //         return DropdownMenuItem(
                        //           value: "Salary",
                        //           child: Row(
                        //             children: [
                        //               CircleAvatar(),
                        //               Customtext(
                        //                 text: "${Category}",
                        //                 textfontSize: 14,
                        //                 textcolor: Color(0xff666666),
                        //                 textfontweight: FontWeight.w500,
                        //               ),
                        //             ],
                        //           ),
                        //         );
                        //       }).toList(),
                        //       onChanged: (newValue) {
                        //         categoryName = newValue ?? "";
                        //       });
                        // }),
                        ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Customtext(
                      text: "AMOUNT",
                      textfontSize: 12,
                      textcolor: Color(0xff666666),
                      textfontweight: FontWeight.w500),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.4, color: mainAppColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: amountcontroller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Select an option",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Customtext(
                      text: "DATE",
                      textfontSize: 12,
                      textcolor: Color(0xff666666),
                      textfontweight: FontWeight.w500),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.4, color: mainAppColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: datecontroller,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: "Select an option",
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(0),
                            child: InkWell(
                              onTap: () async {
                                final DateTime? selectedDate =
                                    await showDatePicker(
                                        context: context,
                                        firstDate: DateTime(2020),
                                        lastDate: DateTime(2030));
                                datecontroller.text = DateFormat("dd/MM/yyyy")
                                    .format(selectedDate!);
                              },
                              child: SvgPicture.asset(
                                "asset/svg/Addexpense/calendar.svg", // Replace with your SVG file path
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print(incomeOrExpense);
                        print(categoryName);
                        print(datecontroller.text);
                        Map<String, dynamic> item = {
                          "Category": categoryName,
                          "Amount": amountcontroller.text,
                          "Date": datecontroller.text,
                        };
                        if (isIncomeSelectedNotifier.value == true) {
                          Databaseservies().addIncomeToDatabase(item);
                        } else {
                          Databaseservies().addExpenseToDatabase(item);
                        }
                      },
                      child: Text("add"))
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
