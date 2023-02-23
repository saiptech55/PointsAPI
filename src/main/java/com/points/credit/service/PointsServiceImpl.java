package com.points.credit.service;

import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.points.credit.entity.Transaction;
import com.points.credit.model.Points;
import com.points.credit.repository.TransactionRepository;

@Service
public class PointsServiceImpl implements PointsService {

	
	@Autowired
	TransactionRepository transactionRepository;

	public Points getRewardsPoints(Long customerId) {

		Timestamp lastMonthTimestamp = getDateBasedOnOffSetDays(30);
		Timestamp lastSecondMonthTimestamp = getDateBasedOnOffSetDays(2*30);
		Timestamp lastThirdMonthTimestamp = getDateBasedOnOffSetDays(3*30);

		List<Transaction> oneMonthTransactions = transactionRepository.findAllByCustomerIdAndTransactionDateBetween(
				customerId, lastMonthTimestamp, Timestamp.from(Instant.now()));
		List<Transaction> secondMonthTransactions = transactionRepository
				.findAllByCustomerIdAndTransactionDateBetween(customerId, lastSecondMonthTimestamp, lastMonthTimestamp);
		List<Transaction> ThirdMonthTransactions = transactionRepository
				.findAllByCustomerIdAndTransactionDateBetween(customerId, lastThirdMonthTimestamp,
						lastSecondMonthTimestamp);

		int firstMonthPoints = getPoints(oneMonthTransactions);
		int SecondMonthPoints = getPoints(secondMonthTransactions);
		int ThirdMonthPoints = getPoints(ThirdMonthTransactions);

		Points customerRewards = new Points();
		customerRewards.setCustomerId(customerId);
		customerRewards.setLastMonthRewardPoints(firstMonthPoints);
		customerRewards.setLastSecondMonthRewardPoints(SecondMonthPoints);
		customerRewards.setLastThirdMonthRewardPoints(ThirdMonthPoints);
		customerRewards.setTotalRewards(firstMonthPoints + SecondMonthPoints + ThirdMonthPoints);

		return customerRewards;

	}

	private int getPoints(List<Transaction> transactions) {
		int totalPoints = 0; 

		for (Transaction transaction : transactions) 
		{ 

			if (transaction.getTransactionAmount() <= 50) 
			{ 

				totalPoints += 0; 

			} 
			else if (transaction.getTransactionAmount() > 50 && transaction.getTransactionAmount() <= 100) 
			{ 

				totalPoints += (transaction.getTransactionAmount() - 50); 

			} 
			else 
			{ 

				totalPoints += ((transaction.getTransactionAmount() - 50) + (transaction.getTransactionAmount() - 100)); 

			} 
		} 
		return totalPoints;
	}
	


	public Timestamp getDateBasedOnOffSetDays(int days) {
		return Timestamp.valueOf(LocalDateTime.now().minusDays(days));
	}

}
