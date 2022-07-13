package du.board.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import du.board.dao.BoardDAO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository
public class BoardDAOImpl extends EgovAbstractMapper implements BoardDAO{

	@Override
	public List<BoardDAO> selectBoardList() {
		return selectList("Board.selectBoardList");
	}

}
