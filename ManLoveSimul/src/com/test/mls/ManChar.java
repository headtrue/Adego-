package com.test.mls;

public class ManChar {

	String[] descMan;
	int[][] scoreMan;
	String[][] question;
	

	public ManChar() {
		descMan = new String[4];
		scoreMan = new int[5][];
		question = new String[5][5];
	}

	void descMan() {

		descMan[0] = "1. 남자A - 그는 순수한 외모와 편안한 미소를 같고 있지만 차가운 도시남자 이미지, \n" + "현실세계에서는 말이 없지만 키보드를 잡으면 무적이 된다. \n"
				+ "그리고 그는 물티슈를 항상 가지고 다니며 쉬는 날에는 혼자 커피를 마시고 쇼핑하기를 즐긴다. \n\n";
		descMan[1] = "2. 남자B - 시간이 많아 근래에 남자만 만나며 순수하고 착하지만 재미가 없다. \n"
				+ "처음 보는 여자 앞에서는 얼굴이 빨개지고 말을 더듬지만 친해지면 평생 여사친으로 연결된다. \n"
				+ "또한 요리를 잘하여 첫 만남에서 직접 만든 초콜릿을 주는 다정한 남자...\n\n";
		descMan[2] = "3. 남자C - 그는 그룹의 리더가 되기를 좋아하고 사람들이 자신에게 집중하는 것을 즐겨 \n"
				+ "항상 복식호흡으로 말하여 목소리가 크다. 한 여자에게 모든 사랑을 주지만 그 외 여자들의 사랑을 원하는 남자, \n"
				+ "그의 순수한 눈망울 너머로 음란한 도화살이 느껴진다... \n\n";
		descMan[3] = "4. 남자D - 그는 준수한 외모와 키에 도전적인 정신을 가지고 있는 차도남! \n" + "사교성이 매우 뛰어나지만 속정이 부족하여 깊은 관계로 이어지기가 힘들다. \n"
				+ "평일에는 자기개발을, 불금에는 섹시한 여성들과 시간을 보내며 연애 경험 15번의 소유자.\n\n";
	}
	
	void question() {
	      question[0][0] = "\nQ1. 그와 식사를 하던 도중, 그의 이에 낀 음식물을 보았다. 나는 어떻게 해야 할까? \n";
	      question[0][1] = "\t1. 바로 사실을 말해 준다. \n";
	      question[0][2] = "\t2. 대충 돌려서 말해 준다. \n";
	      question[0][3] = "\t3. 사랑스럽게 직접 빼준다. \n";
	      question[0][4] = "\t4. 무시한다. \n\n";
	      
	      question[1][0] = "\nQ2. 음식을 다 먹고 그가 계산을 했다. 이 때 나는 어떻게 행동을 할까? \n";
	      question[1][1] = "\t1. \"커피는 제가 살게요\"라고 말한다. \n";
	      question[1][2] = "\t2. \"잘 먹었어요\"라고 말한다. \n";
	      question[1][3] = "\t3. \"계좌를 불러주세요.\"라고 말한다. \n";
	      question[1][4] = "\t4. 그냥 조용히 기다린다. \n\n";
	      
	      question[2][0] = "\nQ3. 식사를 끝낸 후, 어디로 가야할까? \n";
	      question[2][1] = "\t1. 이야기를 더 나눌 수 있는 카페 \n";
	      question[2][2] = "\t2. 좀 더 가까워질 수 있는 술집 \n";
	      question[2][3] = "\t3. 나의 매력을 보여줄 수 있는 노래방 \n";
	      question[2][4] = "\t4. 그와 모든 것을 할 수 있는 그 방... \n\n";
	      
	      question[3][0] = "\nQ4. 데이트를 끝내고 집에 가야할 시간이다. 마침 집 방향이 같은데 나는 어떻게 해야할까? \n";
	      question[3][1] = "\t1. \"한 잔 할래요~?\"라고 말한다. \n";
	      question[3][2] = "\t2. 다음 만남을 기약하기 위해 같이 걸어간다. \n";
	      question[3][3] = "\t3. 밀당을 하기 위해 약속이 있다고 그를 혼자 보낸다. \n";
	      question[3][4] = "\t4. 차가 끊긴 것 같다고 거짓말을 한다. \n\n";
	      
	      question[4][0] = "\nQ5. 헤어지고 난 뒤 그에게 메세지가 왔다. 나는 어떻게 할까? \n";
	      question[4][1] = "\t1. 전화를 한다. \n";
	      question[4][2] = "\t2. 내일 답장을 한다. \n";
	      question[4][3] = "\t3. 솔직한 나의 감정을 말한다. \n";
	      question[4][4] = "\t4. 읽고 십는다. \n\n";
	}

	int[][] scoreMan(int choiceMan) {

		switch (choiceMan) {
		case 1:
			scoreMan[0] = new int[] { 20, 15, 10, 5 };
			scoreMan[1] = new int[] { 20, 15, 5, 10 };
			scoreMan[2] = new int[] { 15, 20, 10, 5 };
			scoreMan[3] = new int[] { 20, 15, 5, 10 };
			scoreMan[4] = new int[] { 15, 10, 20, 5 };
			break;
		case 2:
			scoreMan[0] = new int[] { 10, 20, 15, 5 };
			scoreMan[1] = new int[] { 20, 15, 5, 10 };
			scoreMan[2] = new int[] { 10, 15, 5, 20 };
			scoreMan[3] = new int[] { 15, 20, 5, 10 };
			scoreMan[4] = new int[] { 15, 10, 20, 5 };
			break;
		case 3:
			scoreMan[0] = new int[] { 10, 20, 15, 5 };
			scoreMan[1] = new int[] { 20, 15, 5, 10 };
			scoreMan[2] = new int[] { 10, 15, 5, 20 };
			scoreMan[3] = new int[] { 15, 20, 5, 10 };
			scoreMan[4] = new int[] { 15, 10, 20, 5 };
			break;
		case 4:
			scoreMan[0] = new int[] { 10, 20, 15, 5 };
			scoreMan[1] = new int[] { 20, 15, 5, 10 };
			scoreMan[2] = new int[] { 10, 15, 5, 20 };
			scoreMan[3] = new int[] { 15, 20, 5, 10 };
			scoreMan[4] = new int[] { 15, 10, 20, 5 };
			break;
		}
		return scoreMan;
	}

}
