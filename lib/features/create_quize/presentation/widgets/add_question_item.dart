import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/constants/all_constants.dart';
import 'package:quiz_app/features/create_quize/domain/entities/test.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../../core/components/components.dart';
import '../../../../routes.dart';
import '../bloc/bloc/create_quiz_bloc.dart';
import 'add_answer_component.dart';
import 'widgets.dart';

class AddQuestionItem extends StatefulWidget {
  const AddQuestionItem(
      {super.key, required this.index, required this.pageController});
  final int index;
  final PageController pageController;

  @override
  State<AddQuestionItem> createState() => _AddQuestionItemState();
}

class _AddQuestionItemState extends State<AddQuestionItem> {
  List<String> listAnswers = [];
  final TextEditingController answerContrller = TextEditingController();
  final TextEditingController quetionContrller = TextEditingController();
  Test? model;
  String? quetionImage;
  @override
  void initState() {
    super.initState();
    final list = context.read<CreateQuizBloc>().listTests;

    if (widget.index < list.length) {
      model = list[widget.index];
      quetionContrller.text = model!.quetion;
      listAnswers = [
        model!.answer,
        model!.option1,
        model!.option2,
        model!.option3
      ];
      quetionImage = model!.quetionImage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateQuizBloc, CreateQuizState>(
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView(
                padding: EdgeInsets.only(bottom: 80.h),
                physics: const BouncingScrollPhysics(),
                children: [
                  AddImageComponent(
                    path: quetionImage,
                    onGetImage: (path) {
                      quetionImage = path;
                    },
                    margin: EdgeInsets.only(top: 16.h, bottom: 30),
                  ),
                  CustomTextField(
                    title: 'Add Question',
                    hintText: 'Enter your question',
                    controller: quetionContrller,
                  ),
                  SizedBox(
                    height: listAnswers.length == 4
                        ? 0
                        : listAnswers.length >= 2
                            ? 125.h
                            : 250.h,
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1.68,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(4 - listAnswers.length, (index) {
                        return AddAnswerComponent(onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Material(
                              color: Colors.transparent,
                              child: AddAnswerDialog(
                                textEditingController: answerContrller,
                                onSubmit: (isCorrect) {
                                  Navigator.pop(context);
                                  if (isCorrect) {
                                    listAnswers.insert(0, answerContrller.text);
                                  } else {
                                    listAnswers.add(answerContrller.text);
                                  }
                                  answerContrller.clear();
                                  setState(() {});
                                },
                              ),
                            ),
                          );
                        });
                      }),
                    ),
                  ),
                  Text('Answers', style: AppTextStyles.body16w5),
                  ...List.generate(
                    listAnswers.length,
                    (index) => Container(
                      width: double.maxFinite,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 16.h),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.grey5Color, width: 2),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        listAnswers[index],
                        style: AppTextStyles.body16w4
                            .copyWith(color: AppColors.blackColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomLargeButton(
                text: 'Add Question',
                onTap: () {
                  if (widget.index == 9) {
                    Navigator.pushNamed(context, Routes.reviewPage);
                  } else if (listAnswers.length == 4) {
                    context.read<CreateQuizBloc>().add(
                          AddQuetionEvevnt(
                            testModel: Test(
                                quetion: quetionContrller.text,
                                answer: listAnswers[0],
                                option1: listAnswers[1],
                                option2: listAnswers[2],
                                option3: listAnswers[3],
                                quiz: widget.index,
                                quetionImage: quetionImage),
                          ),
                        );
                    widget.pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn,
                    );
                  } else {
                    showTopSnackBar(Overlay.of(context),
                        CustomSnackBar.error(message: 'Fill all answers'));
                  }
                },
              ),
            )
          ],
        );
      },
    );
  }
}
