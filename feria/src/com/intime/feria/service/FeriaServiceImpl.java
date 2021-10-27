package com.intime.feria.service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Service;

import com.intime.feria.dao.FDatesDAO;
import com.intime.feria.dao.FImagesDAO;
import com.intime.feria.dao.FParticipationsDAO;
import com.intime.feria.dao.FReviewsDAO;
import com.intime.feria.dao.FeriasDAO;
import com.intime.feria.dao.PHeadsDAO;
import com.intime.feria.util.PaginateUtil;
import com.intime.feria.vo.Feria;
import com.intime.feria.vo.PageVO;

/* 2020-08-07 장유정(기본세팅) 5 */
@Service
public class FeriaServiceImpl implements FeriaService {
	
	private FDatesDAO fDatesDAO;
	private FeriasDAO feriasDAO;
	private FImagesDAO fImagesDAO;
	private FParticipationsDAO fParticipationsDAO;
	private PHeadsDAO pHeadsDAO;

	public void setfDatesDAO(FDatesDAO fDatesDAO) {
		this.fDatesDAO = fDatesDAO;
	}
	
	public void setFeriasDAO(FeriasDAO feriasDAO) {
		this.feriasDAO = feriasDAO;
	}
	
	public void setfImagesDAO(FImagesDAO fImagesDAO) {
		this.fImagesDAO = fImagesDAO;
	}
	
	public void setfParticipationsDAO(FParticipationsDAO fParticipationsDAO) {
		this.fParticipationsDAO = fParticipationsDAO;
	}
	
	public void setpHeadsDAO(PHeadsDAO pHeadsDAO) {
		this.pHeadsDAO = pHeadsDAO;
	}
	
	//2020-08-12 박상훈
	@Override
	public Map<String, Object> getHostsFeriaList(int page, int no) {
		
		//개최한 페리아, 페이지 네이트  넘어감
		Map<String, Object> modelMap = new ConcurrentHashMap<String, Object>();
		System.out.println("유저번호는? :"+no);
		
		//한 페이지에 보여질 페이라 수
		int numPage = 8;

		//페이지 네이션 블록 수
		int numBlock = 3;
		
		PageVO pageVO = new PageVO(page, numPage, no);
		List<Feria> ferias = feriasDAO.selectHostsFeiraList(pageVO);
		
		int total = feriasDAO.selectHostsFeriaTotal(no);
		
		String paginate = PaginateUtil.getPaginate(page, total, numPage, numBlock, "/hostsPastFeria.feria", "page=");
		
		//잘나오나 출력 확인
		//for (Feria feria : ferias) {
			//System.out.println("제목"+feria.getFeriaName());
			//System.out.println("시간"+feria.getFeriaDate());
			//System.out.println("시간형변환"+feria.getFeriaDateChange());
		//}//에러도 발생 안 하고, 출력 조차도 안 됨
		//-> 그것은 바로.. new PageVO(page, numPage) 만 되어있었음...
		
		modelMap.put("ferias", ferias);
		modelMap.put("paginate", paginate);
		modelMap.put("total", total);
		
		return modelMap;
	}

	@Override
	public int getHostsFeriaTotal(int no) {
		return feriasDAO.selectHostsFeriaTotal(no);
	}
	
	
}
