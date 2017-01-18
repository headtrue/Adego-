package com.test.mls;

import java.util.Scanner;

public class MLSMain {

	public static void main(String args[]) {

		Scanner input = new Scanner(System.in);

		System.out.println("----------------------------------------------------\n\n");
		System.out.println("\t\t남자 연애 시뮬레이션(남연시) \n\n");
		System.out.println("----------------------------------------------------\n\n");

		ManChar man = new ManChar();
		man.descMan();
		man.question();

		do {

			int choiceMan = 0;
			int choiceExam = 0;
			int scoreUser = 0;
			int[][] scoreMan;

			for (int i = 0; i < man.descMan.length; i++) {
				System.out.println(man.descMan[i]);
			}

			System.out.println("당신이 만나고 싶은 남자 타입은 ?");
			System.out.print(">> ");
			choiceMan = input.nextInt();
			
			while (choiceMan < 1 || choiceMan > man.descMan.length) {
				System.out.println("\n※ 입력 범위를 초과하였습니다 ※");
				System.out.println("1 ~ " + man.descMan.length + " 중 선택하세요.");
				System.out.print(">> ");
				choiceMan = input.nextInt();
			}
			
			scoreMan = man.scoreMan(choiceMan);
			System.out.println();

			for (int i = 0; i < 5; i++) {
				for (int j = 0; j < man.question.length; j++) {
					System.out.println(man.question[i][j]);
				}
				System.out.println("1 ~ 4 중 선택하세요.");
				System.out.print(">> ");
				choiceExam = input.nextInt();

				while (choiceExam < 1 || choiceExam > 4) {
					System.out.println("\n※ 입력 범위를 초과하였습니다 ※");
					System.out.println("1 ~ 4 중 선택하세요.");
					System.out.print(">> ");
					choiceExam = input.nextInt();
				}

				switch (choiceMan) {
				case 1:
					scoreUser += scoreMan[i][choiceExam - 1];
					break;
				case 2:
					scoreUser += scoreMan[i][choiceExam - 1];
					break;
				case 3:
					scoreUser += scoreMan[i][choiceExam - 1];
					break;
				case 4:
					scoreUser += scoreMan[i][choiceExam - 1];
					break;
				}
			}

			System.out.println("당신의 점수는 " + scoreUser + "점입니다.");
			System.out.println("계속 하시겠습니까? (y/n)");
			System.out.print(">> ");

		} while (!input.next().equals("n"));
		System.out.print("\n게임을 종료합니다...");
	}
}