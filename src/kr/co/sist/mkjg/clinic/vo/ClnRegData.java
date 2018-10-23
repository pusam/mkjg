package kr.co.sist.mkjg.clinic.vo;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class ClnRegData {
	//private String hName, cBln,	cName, 	cPhone, cMail, cOpenTime, 	cEndTime, 	cPost, cAddr1, cAddr2, medicine,	surgery, beauty, 	hosCare, intro, LOC_X, LOC_Y, night, week, openNightHH, openNightMM, endNightHH, endNightMM;
	private String cKind, cId, hName, cBln, cName, cPhone, cMail, openTime, endTime, cPost, cAddr1, cAddr2, medicine, surgery, beauty, 	hosCare, intro, loc_x, loc_y, night, week, openNightTime, endNightTime, img1, img2, img3, img4, subject;
}
